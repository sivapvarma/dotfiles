-- kludges
defwinprop{
        class = "nxclient",
        float = true;
}
defwinprop{
        class = "Xmessage",
        instance = "xmessage",
        float = true,
        acrobatic = true;
}
defwinprop{
        class = "TopLevelShell",
        instance = "FormDialog0_MOTIF_popup",
--        match = function (prop, cwin, id) 
--                        local id = cwin:get_ident()
--                        return string.match(id.instance,".*popup") == not nil
--                end,
        float = true,
        acrobatic = true;
}
defwinprop{
        class = "TopLevelShell",
        instance = "FormDialog0_popup",
--        match = function (prop, cwin, id) 
--                        local id = cwin:get_ident()
--                        return string.match(id.instance,".*popup") == not nil
--                end,
        float = true,
        acrobatic = true;
}

-- notioncore
defbindings("WMPlex.toplevel", {
    bdoc("Restart session."),
    kpress(META.."F5", "ioncore.restart()"),
})

defbindings("WScreen", {
    bdoc("Move focus."),
    kpress(META.."Right", "ioncore.goto_next(_chld, 'right')", "_chld:non-nil"),
    kpress(META.."Left" , "ioncore.goto_next(_chld, 'left' )", "_chld:non-nil"),
    kpress(META.."Up"   , "ioncore.goto_next(_chld, 'up'   )", "_chld:non-nil"),
    kpress(META.."Down" , "ioncore.goto_next(_chld, 'down' )", "_chld:non-nil"),
})

defbindings("WFrame.toplevel", {
    bdoc("Switch to next/previous object within the frame."),
    kpress(META.."Tab", "WFrame.switch_next(_)"), 
    kpress(META.."Shift+Tab", "WFrame.switch_prev(_)"),
})
