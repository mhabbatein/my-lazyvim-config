-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Ensure Luasnip is loaded
-- require("luasnip.loaders.from_vscode").lazy_load({
--   paths = { "~/.config/nvim/snippets" },
-- })

local snippet_files = vim.fn.globpath("~/.config/nvim/snippets", "*.lua", true, true)
for _, file in ipairs(snippet_files) do
  dofile(file)
end

require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".next", ".git" },
    find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
  },
})

-- Keep the cursor in the center vertically
vim.o.scrolloff = 999
vim.opt.clipboard = "unnamedplus"

require("lspconfig").eslint.setup({
  cmd = { "vscode-eslint" },
  -- other settings
})
