local function callback(opts)
  return {
    Normal = { fg = C.syntax.text, bg = opts.transparent and C.none or C.ui.base },
    NormalFloat = {
      fg = C.ui.text,
      bg = opts.inactive and C.ui.base or C.ui.float,
    },
    NormalNC = {
      fg = C.syntax.text,
      bg = (opts.transparent and opts.inactive and C.ui.inactive_base)
        or (opts.transparent and C.none)
        or (opts.inactive and C.ui.inactive_base)
        or C.ui.base,
    },
    Title = { fg = C.ui.title, bg = C.none },
    Cursor = { fg = C.ui.base, bg = C.syntax.text },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    ColorColumn = { fg = C.none, bg = C.ui.current_line }, -- NOTE: Find better color
    CursorLineNr = { fg = C.syntax.text, bg = C.none },
    Conceal = { fg = C.syntax.subtext1, bg = C.none },
    CursorColumn = { fg = C.none, bg = C.ui.current_line },
    CursorLine = { fg = C.none, bg = C.ui.current_line },
    Directory = { fg = C.ui.blue, bg = C.none },
    DiffAdd = { fg = C.ui.base, bg = C.syntax.green },
    DiffChange = { fg = C.ui.base, bg = C.syntax.yellow },
    DiffDelete = { fg = C.ui.base, bg = C.syntax.red },
    DiffText = { fg = C.ui.base, bg = C.syntax.yellow },
    DiffAdded = { fg = C.syntax.green },
    DiffRemoved = { fg = C.syntax.red },
    DiffChanged = { fg = C.syntax.blue },
    DiffOldFile = { fg = C.syntax.orange },
    DiffNewFile = { fg = C.syntax.green },
    DiffFile = { fg = C.syntax.blue },
    DiffLine = { fg = C.syntax.text }, -- NOTE: Find better color
    DiffIndexLine = { fg = C.syntax.cyan },
    ErrorMsg = { fg = C.syntax.red, bg = C.none },
    WinSeparator = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base, bold = false },
    Folded = { fg = C.syntax.subtext1, bg = C.none },
    FoldColumn = { fg = C.syntax.subtext1, bg = C.none },
    IncSearch = { fg = C.ui.base, bg = C.ui.purple },
    CurSearch = { link = "IncSearch" },
    LineNr = { fg = C.syntax.subtext1, bg = C.none },
    NonText = { fg = C.syntax.subtext1, bg = C.none },
    Pmenu = { fg = C.ui.text, bg = C.ui.popup },
    PmenuSel = { fg = C.none, bg = C.ui.current_line },
    PmenuSbar = { fg = C.none, bg = C.ui.tabline },
    PmenuThumb = { fg = C.none, bg = C.ui.scrollbar },
    Question = { fg = C.syntax.purple, bg = C.none },
    QuickFixLine = { fg = C.ui.base, bg = C.syntax.yellow },
    Search = { fg = C.none, bg = C.ui.selection },
    SignColumn = { fg = C.none, bg = C.none },
    SpecialKey = { fg = C.syntax.subtext1, bg = C.none },
    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellLocal = { undercurl = true },
    SpellRare = { undercurl = true },
    StatusLine = { fg = C.syntax.subtext0, bg = C.ui.statusline },
    StatusLineNC = { fg = C.syntax.subtext1, bg = C.none },
    StatusLineTerm = { fg = C.syntax.text, bg = C.syntax.subtext0 }, -- INFO: Apperantly not needed ?
    StatusLineTermNC = { fg = C.ui.tabline, bg = C.none },
    StatusInactive = { fg = C.ui.tabline, bg = C.syntax.subtext0 }, -- TODO: find better inactive color
    StatusNormal = { fg = C.ui.tabline, bg = C.ui.blue },
    StatusInsert = { fg = C.ui.tabline, bg = C.ui.green },
    StatusVisual = { fg = C.ui.tabline, bg = C.ui.purple },
    StatusReplace = { fg = C.ui.tabline, bg = C.ui.red },
    StatusCommand = { fg = C.ui.tabline, bg = C.ui.yellow },
    StatusTerminal = { link = "StatusInsert" },
    WinBar = { fg = C.syntax.subtext0, bg = C.none },
    WinBarNC = {
      fg = C.syntax.subtext1,
      bg = (opts.transparent and opts.inactive and C.ui.inactive_base)
        or (opts.transparent and C.none)
        or (opts.inactive and C.ui.inactive_base)
        or C.ui.base,
    },
    TabLine = { fg = C.syntax.subtext1, bg = C.ui.tabline },
    TabLineSel = { fg = C.syntax.text, bg = C.ui.base, bold = true },
    TabLineFill = { fg = C.none, bg = C.ui.tabline },
    Terminal = { fg = C.syntax.text, bg = C.ui.base },
    Visual = { fg = C.none, bg = C.ui.selection },
    VisualNOS = { fg = C.ui.selection, bg = C.none },
    VertSplit = { fg = C.ui.split, bg = opts.transparent and C.none or C.ui.base },
    WarningMsg = { fg = C.syntax.yellow, bg = C.none },
    WildMenu = { fg = C.ui.base, bg = C.syntax.blue },
    EndOfBuffer = { fg = C.ui.base, bg = C.none },
    FloatTitle = { fg = C.ui.title },
    FloatBorder = { fg = C.ui.border, bg = C.ui.base },
    Float = { fg = C.ui.border, bg = C.ui.base },
    MatchParen = { fg = C.none, bg = C.ui.highlight },
  }
end

return callback
