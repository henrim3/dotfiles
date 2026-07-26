local colors = {
  bg = "#ffffff",
  fg = "#000000",

  blue = "#0000aa",
  bright_blue = "#5555ff",
  purple = "#aa00aa",
  green = "#00aa00",

  gray = "#aaaaaa",
  dark_gray = "#555555",

  error = "#f44747",
  warning = "#aaaa00",
}

vim.cmd("highlight clear")
vim.o.background = "light"

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "templeos"

local hl = function(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

-- Editor
hl("Normal", {
  fg = colors.fg,
  bg = colors.bg,
})

hl("NormalFloat", {
  fg = colors.fg,
  bg = colors.gray,
})

hl("Cursor", {
  fg = colors.bg,
  bg = colors.blue,
})

hl("CursorLine", {
  bg = "#eeeeee",
})

hl("CursorLineNr", {
  fg = colors.blue,
})

hl("LineNr", {
  fg = colors.fg,
})

hl("Visual", {
  fg = colors.bg,
  bg = colors.blue,
})

hl("Search", {
  fg = colors.bg,
  bg = colors.purple,
})

hl("IncSearch", {
  fg = colors.bg,
  bg = colors.blue,
})


-- Syntax

-- Comments
hl("Comment", {
  fg = colors.green,
  italic = true,
})


-- Keywords
hl("Keyword", {
  fg = colors.blue,
})

hl("Statement", {
  fg = colors.blue,
})

hl("Conditional", {
  fg = colors.blue,
})

hl("Repeat", {
  fg = colors.blue,
})

hl("Operator", {
  fg = colors.fg,
})


-- Types
hl("Type", {
  fg = colors.bright_blue,
})

hl("StorageClass", {
  fg = colors.blue,
})


-- Functions
hl("Function", {
  fg = colors.purple,
})


-- Variables
hl("Identifier", {
  fg = colors.blue,
})


-- Constants
hl("Constant", {
  fg = colors.fg,
})

hl("Number", {
  fg = colors.fg,
})

hl("Boolean", {
  fg = colors.fg,
})


-- Strings
hl("String", {
  fg = colors.fg,
})


-- Special
hl("Special", {
  fg = colors.blue,
})


-- Preprocessor
hl("PreProc", {
  fg = colors.purple,
})


-- Errors
hl("Error", {
  fg = colors.error,
})

hl("WarningMsg", {
  fg = colors.warning,
})


-- Treesitter mappings

local treesitter = {
  ["@comment"] = {
    fg = colors.green,
    italic = true,
  },

  ["@keyword"] = {
    fg = colors.blue,
  },

  ["@keyword.function"] = {
    fg = colors.blue,
  },

  ["@function"] = {
    fg = colors.purple,
  },

  ["@function.call"] = {
    fg = colors.purple,
  },

  ["@type"] = {
    fg = colors.bright_blue,
  },

  ["@type.builtin"] = {
    fg = colors.bright_blue,
  },

  ["@variable"] = {
    fg = colors.blue,
  },

  ["@constant"] = {
    fg = colors.fg,
  },

  ["@string"] = {
    fg = colors.fg,
  },

  ["@number"] = {
    fg = colors.fg,
  },

  ["@operator"] = {
    fg = colors.fg,
  },

  ["@punctuation"] = {
    fg = colors.fg,
  },

  ["@property"] = {
    fg = colors.blue,
  },

  ["@namespace"] = {
    fg = colors.bright_blue,
  },

  ["@constructor"] = {
    fg = colors.bright_blue,
  },

  ["@parameter"] = {
    fg = colors.fg,
    italic = true,
  },
}

for group, opts in pairs(treesitter) do
  hl(group, opts)
end


-- LSP semantic tokens

hl("@lsp.type.class", {
  fg = colors.bright_blue,
})

hl("@lsp.type.enum", {
  fg = colors.bright_blue,
})

hl("@lsp.type.function", {
  fg = colors.purple,
})

hl("@lsp.type.variable", {
  fg = colors.blue,
})

hl("@lsp.type.parameter", {
  fg = colors.fg,
  italic = true,
})


-- UI

hl("StatusLine", {
  fg = colors.bg,
  bg = colors.blue,
})

hl("StatusLineNC", {
  fg = colors.bg,
  bg = colors.gray,
})

hl("VertSplit", {
  fg = colors.fg,
})

hl("Pmenu", {
  fg = colors.fg,
  bg = colors.gray,
})

hl("PmenuSel", {
  fg = colors.bg,
  bg = colors.blue,
})


-- Diagnostics

hl("DiagnosticError", {
  fg = colors.error,
})

hl("DiagnosticWarn", {
  fg = colors.warning,
})

hl("DiagnosticInfo", {
  fg = colors.blue,
})

hl("DiagnosticHint", {
  fg = colors.green,
})
