import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig (additionalKeys)
import System.IO
import XMonad.Layout.Tabbed
import XMonad.Layout.Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName
import XMonad.Hooks.UrgencyHook
import XMonad.Layout.Grid
import XMonad.Layout.ResizableTile
import XMonad.Util.Themes
import XMonad.Layout.PerWorkspace
import XMonad.Layout.SimplestFloat

myModMask               = mod1Mask      -- changes the mod to left Alt Key
myFocusedBorderColor    = "#00FF00"
myNormalBorderColor     = "#CCCCCC"
myBorderWidth           = 1
myTerminal              = "xterm"       -- Solarized colorschemed

{-
 Workspace configuraiton
-}
myWorkspaces = ["0:Term", "1:Web", "2:Dev", "3:Docs", "4:Pix", "5:Float"]
startupWorkspace = "2:Dev"      -- which workspace do you want to be on after launch

-- , layoutHook  = avoidStruts  $  layoutHook defaultConfig
defaultLayouts = smartBorders(avoidStruts(
    ResizableTall 1 (3/100) (1/2) []
    ||| tabbed shrinkText (theme deiflTheme)--defaultTheme
    ||| noBorders Full
    ||| Grid))

myLayouts =
    onWorkspace "5:Float" simplestFloat
    $ defaultLayouts

main = do
    xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
    spawn "xrdb -merge $(HOME)/.Xresources"
    xmonad $ defaultConfig
<<<<<<< HEAD
        { terminal    = myTerminal
        , modMask     = myModMask       -- left Alt Key
        , borderWidth = myBorderWidth
        , focusedBorderColor = myFocusedBorderColor
        , normalBorderColor = myNormalBorderColor
        , workspaces = myWorkspaces
=======
        { terminal    = "xterm"        -- Solarized colorschemed
        , modMask     = mod1Mask       -- left Alt Key
        , borderWidth = 1
        , focusedBorderColor = "#00FF00"
        , normalBorderColor = "#000000"
        , workspaces = ["term", "vim", "web", "4", "5", "6", "7", "8"]
>>>>>>> 3fcb34635473af23c8f2c02df286dcc48cf09792
        , manageHook  = manageDocks <+> manageHook defaultConfig
        , layoutHook  = myLayouts
        , logHook     = dynamicLogWithPP xmobarPP
                            { ppOutput = hPutStrLn xmproc
                            , ppTitle  = xmobarColor "green" "" . shorten 50
                            }
        } `additionalKeys`
        [ ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
