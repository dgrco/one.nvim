-- colors/one.lua
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'one'

local c = {
  bg          = '#282c34',
  fg          = '#abb2bf',

  cursor      = '#abb2bf',
  line_nr     = '#4b5263',
  visual      = '#3e4451',
  search_bg   = '#3e4451',
  search_fg   = '#abb2bf',
  match_paren = '#e5c07b',

  comment     = '#5c6370',
  string      = '#98c379',
  keyword     = '#c678dd',
  constant    = '#d19a66',
  func        = '#61afef',
  funcAlt     = '#8aabbf',
  type        = '#e5c07b',

  error       = '#e06c75',
  warning     = '#e5c07b',
  todo        = '#d19a66',
}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

set_hl('Normal',        { fg = c.fg, bg = c.bg })
set_hl('SignColumn',    { bg = c.bg })
set_hl('Cursor',        { fg = c.bg, bg = c.cursor })
set_hl('CursorLine',    { bg = '#2c313a' })
set_hl('LineNr',        { fg = c.line_nr })
set_hl('CursorLineNr',  { fg = c.fg })
set_hl('VertSplit',     { fg = c.line_nr, bg = c.bg })

set_hl('Visual',        { bg = c.visual })
set_hl('Search',        { fg = c.search_fg, bg = c.search_bg })
set_hl('IncSearch',     { fg = c.search_fg, bg = c.search_bg })
set_hl('MatchParen',    { fg = c.match_paren, bold = true })

set_hl('Comment',       { fg = c.comment })

set_hl('String',        { fg = c.string })
set_hl('Character',     { fg = c.string })

set_hl('Number',        { fg = c.constant })
set_hl('Boolean',       { fg = c.constant })
set_hl('Float',         { fg = c.constant })
set_hl('Constant',      { fg = c.constant })

set_hl('Identifier',    { fg = c.fg })
set_hl('Function',      { fg = c.funcAlt })
set_hl('Delimiter',     { fg = c.fg })

set_hl('Keyword',       { fg = c.keyword })
set_hl('Conditional',   { fg = c.keyword })
set_hl('Repeat',        { fg = c.keyword })
set_hl('Exception',     { fg = c.keyword })
set_hl('Statement',     { fg = c.keyword })

set_hl('Label',         { fg = c.fg })
set_hl('Operator',      { fg = c.fg })

set_hl('Type',          { fg = c.type })
set_hl('Structure',     { fg = c.type })
set_hl('Typedef',       { fg = c.type })

set_hl('PreProc',       { fg = c.keyword })
set_hl('Special',       { fg = c.fg })

set_hl('Error',         { fg = c.error })
set_hl('Todo',          { fg = c.todo, bg = 'none', bold = true })

set_hl('DiagnosticError',            { fg = c.error })
set_hl('DiagnosticWarn',             { fg = c.warning })
set_hl('DiagnosticInfo',             { fg = c.func })
set_hl('DiagnosticHint',             { fg = c.comment })
set_hl('DiagnosticVirtualTextError', { fg = c.error })
set_hl('DiagnosticVirtualTextWarn',  { fg = c.warning })
set_hl('DiagnosticVirtualTextInfo',  { fg = c.func })
set_hl('DiagnosticVirtualTextHint',  { fg = c.comment })

set_hl('Pmenu',         { fg = c.fg, bg = '#21252b' })
set_hl('PmenuSel',      { fg = c.fg, bg = c.visual })
set_hl('PmenuSbar',     { bg = '#21252b' })
set_hl('PmenuThumb',    { bg = '#4b5263' })

set_hl('NormalFloat',   { fg = c.fg, bg = '#21252b' })
set_hl('FloatBorder',   { fg = c.line_nr, bg = '#21252b' })
set_hl('FloatTitle',    { fg = c.fg, bg = '#21252b' })

set_hl('GitSignsAdd',    { fg = c.string })
set_hl('GitSignsChange', { fg = c.warning })
set_hl('GitSignsDelete', { fg = c.error })

set_hl('@variable',               { fg = c.fg })
set_hl('@variable.builtin',       { fg = c.keyword })
set_hl('@function',               { fg = c.funcAlt })
set_hl('@function.builtin',       { fg = c.func })
set_hl('@constant',               { fg = c.constant })
set_hl('@string',                 { fg = c.string })
set_hl('@keyword',                { fg = c.keyword })
set_hl('@keyword.return',         { fg = c.keyword })
set_hl('@type',                   { fg = c.type })
set_hl('@type.builtin',           { fg = c.type })
set_hl('@type.qualifier',         { fg = c.keyword })
set_hl('@boolean',                { fg = c.constant })
set_hl('@number',                 { fg = c.constant })
set_hl('@operator',               { fg = c.fg })
set_hl('@comment',                { fg = c.comment })
set_hl('@punctuation.bracket',    { fg = c.fg })
set_hl('@punctuation.delimiter',  { fg = c.fg })
set_hl('@property',               { fg = c.fg })
set_hl('@field',                  { fg = c.fg })
set_hl('@parameter',              { fg = c.fg })

set_hl('WhichKey',          { fg = c.keyword, bg = '#21252b' })
set_hl('WhichKeyNormal',    { link = 'NormalFloat' })
set_hl('WhichKeyBorder',    { link = 'FloatBorder' })
set_hl('WhichKeyDesc',      { fg = c.fg })
set_hl('WhichKeyGroup',     { fg = c.func })
set_hl('WhichKeySeparator', { fg = c.line_nr })
set_hl('WhichKeyValue',     { fg = c.comment })
set_hl('WhichKeyTitle',     { fg = c.fg })

set_hl('CmpItemAbbr',           { fg = c.fg })
set_hl('CmpItemAbbrMatch',      { fg = c.func, bold = true })
set_hl('CmpItemAbbrMatchFuzzy', { fg = c.func })
set_hl('CmpItemKind',           { fg = c.type })
set_hl('CmpItemMenu',           { fg = c.line_nr })

set_hl('CmpDoc',                { fg = c.fg, bg = '#21252b' })
set_hl('CmpDocBorder',          { fg = c.line_nr, bg = '#21252b' })
set_hl('CmpDocTitle',           { fg = c.fg, bg = '#21252b' })

vim.g.one_statusline = {
  bg       = '#21252b',
  fg       = c.fg,
  muted    = c.line_nr,
  accent   = c.keyword,
  insert   = c.string,
  visual   = c.func,
  replace  = c.error,
  command  = c.warning,
}

local sl = vim.g.one_statusline

set_hl('MiniStatuslineModeNormal',  { fg = sl.bg, bg = sl.accent, bold = true })
set_hl('MiniStatuslineModeInsert',  { fg = sl.bg, bg = sl.insert, bold = true })
set_hl('MiniStatuslineModeVisual',  { fg = sl.bg, bg = sl.visual, bold = true })
set_hl('MiniStatuslineModeReplace', { fg = sl.bg, bg = sl.replace, bold = true })
set_hl('MiniStatuslineModeCommand', { fg = sl.bg, bg = sl.command, bold = true })

set_hl('MiniStatuslineNormal',      { fg = sl.fg, bg = sl.bg })
set_hl('MiniStatuslineInactive',    { fg = sl.muted, bg = sl.bg })

set_hl('MiniStatuslineDevinfo',     { fg = sl.accent, bg = sl.bg })
set_hl('MiniStatuslineFilename',    { fg = sl.fg, bg = sl.bg })
set_hl('MiniStatuslineFileinfo',    { fg = sl.muted, bg = sl.bg })
set_hl('MiniStatuslineLocation',    { fg = sl.muted, bg = sl.bg })
