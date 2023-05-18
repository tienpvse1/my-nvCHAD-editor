-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local sources = {
   formatting.prettier,
   formatting.stylua,
   formatting.gofmt,
   code_actions.gomodifytags,
   code_actions.impl,
   code_actions.refactoring,
   diagnostics.tsc,
   lint.shellcheck,
}

null_ls.setup {
   debug = true,
   sources = sources,
}

