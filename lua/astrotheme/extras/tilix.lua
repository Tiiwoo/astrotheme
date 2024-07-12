local util = require "astrotheme.extras"

local M = {}

--- @param colors AstroThemePalette
function M.generate(colors)
  return util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${syntax.text}",
    "background-color": "${ui.base}",
    "palette": [
        "${term.black}",
        "${term.red}",
        "${term.green}",
        "${term.yellow}",
        "${term.blue}",
        "${term.purple}",
        "${term.cyan}",
        "${term.white}",
        "${term.bright_black}",
        "${term.bright_red}",
        "${term.bright_green}",
        "${term.bright_yellow}",
        "${term.bright_blue}",
        "${term.bright_purple}",
        "${term.bright_cyan}",
        "${term.bright_white}"
    ]
}
]],
    colors
  )
end

return M