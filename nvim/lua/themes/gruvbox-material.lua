-- Save this as e.g. ~/.config/nvim/colors/gruvbox-material.lua or similar
-- Then use :colorscheme gruvbox-material (after requiring base46 properly)

---@type Base46Table
local M = {}

M.base_30 = {
  white = "#d4be98",          -- color7
  black = "#1d2021",          -- background / color0
  darker_black = "#18191a",   -- slightly darker bg
  black2 = "#282828",         -- ~6% lighter than black
  one_bg = "#282828",         -- one_bg
  one_bg2 = "#3c3836",        -- one_bg2
  one_bg3 = "#504945",        -- one_bg3
  grey = "#665c54",           -- color8
  grey_fg = "#7c6f64",        -- lighter grey
  grey_fg2 = "#928374",
  light_grey = "#a89984",

  red = "#ea6962",            -- color1
  baby_pink = "#e88a7f",
  pink = "#d3869b",           -- color5

  line = "#3c3836",           -- line (slightly lighter bg)

  green = "#a9b665",          -- color2
  vibrant_green = "#b8c07a",

  nord_blue = "#7daea3",      -- color4
  blue = "#7daea3",

  yellow = "#d8a657",         -- color3
  sun = "#e0c38a",

  purple = "#d3869b",
  dark_purple = "#c07a9e",

  teal = "#89b482",           -- color6
  orange = "#e78a4e",         -- approximate

  cyan = "#89b482",

  statusline_bg = "#282828",
  lightbg = "#3c3836",
  pmenu_bg = "#a9b665",       -- green-ish
  folder_bg = "#7daea3",      -- blue-ish
}

M.base_16 = {
  base00 = "#1d2021",  -- bg / black
  base01 = "#3c3836",  -- one_bg-ish
  base02 = "#504945",
  base03 = "#665c54",  -- grey / color8
  base04 = "#7c6f64",
  base05 = "#b5a487",  -- foreground
  base06 = "#d4be98",
  base07 = "#ddc7a1",  -- color15
  base08 = "#ea6962",  -- red
  base09 = "#d8a657",  -- yellow / orange-ish
  base0A = "#d8a657",  -- yellow
  base0B = "#a9b665",  -- green
  base0C = "#89b482",  -- cyan
  base0D = "#7daea3",  -- blue
  base0E = "#d3869b",  -- magenta
  base0F = "#d3869b",  -- magenta / bright
}

M.polish_hl = {
  -- Optional overrides
}

M.type = "dark"

-- For standalone use with base46 plugin:
-- require("base46").theme_tables["gruvbox-material"] = M
-- require("base46").load("gruvbox-material")

return M
