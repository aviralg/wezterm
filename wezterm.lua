local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font('Iosevka Nerd Font', { weight = 'Bold' })
config.font_size = 16
config.color_scheme = 'Google Light (base16)'
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.default_cursor_style = 'SteadyBar'
config.default_prog = { 'nu', "-l" }
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.colors = {
    tab_bar = {
        background = '#ffffff',

        active_tab = {
            bg_color = '#000000',
            fg_color = '#ffffff',
            intensity = 'Bold',
            underline = 'None',
            italic = false,
            strikethrough = false,
        },

        inactive_tab = {
            bg_color = '#ffffff',
            fg_color = '#000000',
        },

        inactive_tab_hover = {
            bg_color = '#ffffff',
            fg_color = '#000000',
            intensity = 'Bold',
            italic = true,
        },

        new_tab = {
            bg_color = '#000000',
            fg_color = '#ffffff',
            intensity = 'Bold',
        },

        new_tab_hover = {
            bg_color = '#3b3052',
            fg_color = '#909090',
            italic = true,
        },
    },
}

config.leader = { key = '\\', mods = 'CTRL', timeout_milliseconds = 1000 }

config.set_environment_variables = {
    EDITOR = 'code',
    PATH = '/usr/local/bin:' .. (os.getenv('HOME') .. '/.cargo/bin:') .. os.getenv('PATH')
}

return config
