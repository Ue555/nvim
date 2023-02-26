-- lua/plugins.luaの読込み

-- プラグインの設定
require "plugins"

-- 設定ファイルの自動化
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

-- デフォルトの設定(vim利用時の設定)
require "base"

-- coc.nvimの関連の設定
require "coc"

-- キーバインドの設定
require "command"

-- ターミナルの設定
require "terminal"
