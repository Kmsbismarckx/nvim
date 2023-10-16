local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_onedark = require("lualine.themes.onedark")

local colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      red = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "#112638",
      inactive_bg = "#2c3043",
}

lualine_onedark.normal.a.bg = colors.blue
lualine_onedark.insert.a.bg = colors.green
lualine_onedark.visual.a.bg = colors.violet
lualine_onedark.command = {
  a = {
    gui = "bold",
    bg = colors.bg,
    fg = colors.fg,
  }
}

lualine.setup(
  {
    options = {
      theme = lualine_onedark
    }
  }
)
