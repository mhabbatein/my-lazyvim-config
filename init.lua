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
