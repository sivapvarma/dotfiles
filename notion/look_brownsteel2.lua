-- look_brownsteel.lua drawing engine configuration file for Notion.

if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    shadow_colour = "#404040",
    highlight_colour = "#707070",
    background_colour = "#202020",
    foreground_colour = "#e0e0e0",
    padding_colour = "#202020",
    padding_pixels = 0,
    highlight_pixels = 1,
    shadow_pixels = 1,
    border_style = "elevated",
--  font = "-*-helvetica-medium-r-normal-*-14-*-*-*-*-*-*-*",
    text_align = "center",
})

de.defstyle("tab", {
--  font = "-*-helvetica-medium-r-normal-*-12-*-*-*-*-*-*-*",
    de.substyle("active-selected", {
        shadow_colour = "#304050",
        highlight_colour = "#708090",
        background_colour = "#506070",
        foreground_colour = "#ffff00",
    }),
    de.substyle("active-unselected", {
        shadow_colour = "#203040",
        highlight_colour = "#607080",
        background_colour = "#203040",
        foreground_colour = "#c0c0c0",
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "#404040",
        highlight_colour = "#707070",
        background_colour = "#404040",
        foreground_colour = "#c0c0c0",
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "#202020",
        highlight_colour = "#505050",
        background_colour = "#303030",
        foreground_colour = "#c0c0c0",
    }),
    text_align = "center",
})

de.defstyle("input", {
    shadow_colour = "#404040",
    highlight_colour = "#707070",
    background_colour = "#202020",
    foreground_colour = "#ffffff",
    padding_pixels = 1,
    highlight_pixels = 1,
    shadow_pixels = 1,
    border_style = "elevated",
    de.substyle("*-cursor", {
        background_colour = "#ffffff",
        foreground_colour = "#202020",
    }),
    de.substyle("*-selection", {
        background_colour = "#000040",
        foreground_colour = "#ffffff",
    }),
})

de.defstyle("input-menu", {
    de.substyle("active", {
        shadow_colour = "#304050",
        highlight_colour = "#708090",
        background_colour = "#506070",
        foreground_colour = "#ffffff",
    }),
})

dopath("lookcommon_emboss2")

gr.refresh()

