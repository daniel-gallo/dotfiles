local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.font_size = 13.5
config.color_scheme = "Dracula (Official)"
config.window_decorations = "RESIZE"
config.pane_focus_follows_mouse = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.keys = {
    {
        key = "d",
        mods = "SUPER",
        action = wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}
    },
    {
        key = "d",
        mods = "SUPER|SHIFT",
        action = wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}
    },
    
    {
        key = "w",
        mods = "SUPER",
        action = wezterm.action{CloseCurrentPane={confirm=true}}
    },
    
    {
        key = "z",
        mods = "SUPER",
        action = wezterm.action.TogglePaneZoomState
    }, 

    {
        key = "LeftArrow",
        mods = "SUPER",
        action = wezterm.action{ActivatePaneDirection="Left"}
    },
    {
        key = "RightArrow",
        mods = "SUPER",
        action = wezterm.action{ActivatePaneDirection="Right"}
    },
    {
        key = "UpArrow",
        mods = "SUPER",
        action = wezterm.action{ActivatePaneDirection="Up"}
    },
    {
        key = "DownArrow",
        mods = "SUPER",
        action = wezterm.action{ActivatePaneDirection="Down"}
    }

}

return config
