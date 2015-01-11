import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig (additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/spv/.xmonad/xmobar.hs"
    spawn "xrdb -merge $(HOME)/.Xresources"
    xmonad $ defaultConfig
        { terminal    = "xterm"        -- Solarized colorschemed
        , modMask     = mod1Mask       -- left Alt Key
        , borderWidth = 1
        , focusedBorderColor = "#00FF00"
        , normalBorderColor = "#000000"
        , workspaces = ["term", "vim", "web", "4", "5", "6", "7", "8"]
        , manageHook  = manageDocks <+> manageHook defaultConfig
        , layoutHook  = avoidStruts  $  layoutHook defaultConfig
        , logHook     = dynamicLogWithPP xmobarPP
                            { ppOutput = hPutStrLn xmproc
                            , ppTitle  = xmobarColor "green" "" . shorten 50
                            }
        } `additionalKeys`
        [ ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
