--lua/plugins.luaの読込み
require "plugins"

--設定ファイルの自動化
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

--クリップボード設定
vim.api.nvim_set_option('clipboard', 'unnamedplus')
