-- Based on Oldschool QBasic VSCode theme by Ericson Williams

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "oldschool-qbasic"
vim.o.background = "dark"

local c = {
  bg        = "#000050",
  panel     = "#000000",
  gray      = "#353535",
  gray2     = "#444444",
  gray3     = "#555555",

  fg        = "#ffffff",
  muted     = "#cfcfc2",
  disabled  = "#8f8f8f",

  red       = "#f92672",
  green     = "#a6e22e",
  yellow    = "#e6db74",
  blue      = "#66d9ef",
  purple    = "#ae81ff",
  orange    = "#fd971f",

  cursor    = "#f8f8f0",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

---------------------------------------------------------------------
-- UI
---------------------------------------------------------------------

hi("Normal",         { fg = c.fg, bg = c.bg })
hi("NormalFloat",    { fg = c.fg, bg = c.panel })

hi("ColorColumn",    { bg = c.gray })
hi("CursorLine",     { bg = c.gray })
hi("CursorColumn",   { bg = c.gray })

hi("LineNr",         { fg = c.disabled, bg = c.bg })
hi("CursorLineNr",   { fg = c.fg, bold = true })

hi("Cursor",         { fg = c.bg, bg = c.cursor })
hi("lCursor",        { fg = c.bg, bg = c.cursor })
hi("TermCursor",     { reverse = true })

hi("Visual",         { bg = c.gray })
hi("Search",         { fg = c.bg, bg = c.yellow })
hi("IncSearch",      { fg = c.bg, bg = c.orange })

hi("StatusLine",     { fg = c.fg, bg = c.gray })
hi("StatusLineNC",   { fg = c.muted, bg = c.gray })

hi("WinSeparator",   { fg = c.fg })

hi("VertSplit",      { fg = c.fg })

hi("Pmenu",          { fg = c.fg, bg = c.gray })
hi("PmenuSel",       { fg = c.fg, bg = c.gray3 })
hi("PmenuSbar",      { bg = c.gray })
hi("PmenuThumb",     { bg = c.fg })

hi("Folded",         { fg = c.muted, bg = c.gray })
hi("FoldColumn",     { fg = c.disabled, bg = c.bg })

hi("SignColumn",     { bg = c.bg })

hi("MatchParen",     { fg = c.yellow, bold = true })

---------------------------------------------------------------------
-- Syntax
---------------------------------------------------------------------

hi("Comment",        { fg = c.orange })

hi("Constant",       { fg = c.purple })
hi("String",         { fg = c.yellow })
hi("Character",      { fg = c.yellow })
hi("Number",         { fg = c.purple })
hi("Boolean",        { fg = c.purple })
hi("Float",          { fg = c.purple })

hi("Identifier",     { fg = c.fg })
hi("Function",       { fg = c.green })

hi("Statement",      { fg = c.red, bold = true })
hi("Conditional",    { fg = c.red, bold = true })
hi("Repeat",         { fg = c.red, bold = true })
hi("Keyword",        { fg = c.red, bold = true })
hi("Exception",      { fg = c.red, bold = true })

hi("Type",           { fg = c.blue, italic = true })
hi("StorageClass",   { fg = c.blue, italic = true })
hi("Structure",      { fg = c.blue, italic = true })
hi("Typedef",        { fg = c.blue, italic = true })

hi("PreProc",        { fg = c.red, bold = true })
hi("Include",        { fg = c.red, bold = true })
hi("Define",         { fg = c.red, bold = true })

hi("Operator",       { fg = c.fg })

hi("Special",        { fg = c.green })
hi("Delimiter",      { fg = c.fg })

hi("Error",          { fg = c.cursor, bg = c.red, bold = true })
hi("Todo",           { fg = c.bg, bg = c.yellow, bold = true })

---------------------------------------------------------------------
-- Diagnostics
---------------------------------------------------------------------

hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn",  { fg = c.yellow })
hi("DiagnosticInfo",  { fg = c.blue })
hi("DiagnosticHint",  { fg = c.green })

---------------------------------------------------------------------
-- Git
---------------------------------------------------------------------

hi("DiffAdd",    { fg = c.green })
hi("DiffChange", { fg = c.blue })
hi("DiffDelete", { fg = c.red })
hi("DiffText",   { fg = c.yellow })

---------------------------------------------------------------------
-- Treesitter
---------------------------------------------------------------------

hi("@comment",              { link = "Comment" })
hi("@string",               { link = "String" })
hi("@string.escape",        { fg = c.orange })
hi("@number",               { link = "Number" })
hi("@boolean",              { link = "Boolean" })
hi("@constant",             { link = "Constant" })

hi("@function",             { link = "Function" })
hi("@function.call",        { link = "Function" })
hi("@method",               { link = "Function" })

hi("@keyword",              { link = "Keyword" })
hi("@keyword.function",     { link = "Keyword" })
hi("@keyword.return",       { link = "Keyword" })

hi("@type",                 { link = "Type" })
hi("@type.builtin",         { link = "Type" })

hi("@variable",             { fg = c.fg })
hi("@variable.builtin",     { fg = c.red })

hi("@property",             { fg = c.green })
hi("@field",                { fg = c.green })
hi("@attribute",            { fg = c.green })

hi("@namespace",            { fg = c.blue, italic = true })

hi("@tag",                  { fg = c.red, bold = true })
hi("@tag.attribute",        { fg = c.green })

hi("@operator",             { link = "Operator" })
hi("@punctuation",          { fg = c.fg })

---------------------------------------------------------------------
-- LSP Semantic Tokens
---------------------------------------------------------------------

hi("@lsp.type.variable",    { fg = c.fg })
hi("@lsp.type.parameter",   { fg = c.fg })
hi("@lsp.type.property",    { fg = c.green })
hi("@lsp.type.function",    { fg = c.green })
hi("@lsp.type.method",      { fg = c.green })
hi("@lsp.type.type",        { fg = c.blue, italic = true })
hi("@lsp.type.namespace",   { fg = c.blue, italic = true })
