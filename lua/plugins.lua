vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
  -- 起動時に読み込むプラグインは名前を書くだけです
 
  -- opt オプションを付けると遅延読み込みになります。
  -- この場合は opt だけで読み込む契機を指定していないため、
  -- packadd コマンドを叩かない限り読み込まれることはありません。
  use { "wbthomason/packer.nvim", opt = true }

  -- Gitを操作するプラグイン
  use "tpope/vim-fugitive"

  -- Gitのコミットメッセージを表示するプラグイン(コマンドを叩いたときに読み込む)
  use { "rhysd/git-messenger.vim", opt = true, cmd = { "GitMessenger" } }
 
  -- .によるコマンド繰り返し機能をより強力にしてくれるプラグイン
  use "tpope/vim-repeat"
  -- coc.nvimのプラグイン
  use { 'neoclide/coc.nvim', branch='release' }
    use 'lervag/vimtex'

  --[[ On new systems install COC packages via
        CocInstall coc-vimtex coc-texlab
  --]]

  -- QuickFix ウィンドウを内容に応じて伸縮してくれるプラグイン
  -- QuickFixへGit の差分を分かり易く表示(特定のイベントで読み込む)
  use { "tpope/vim-unimpaired", opt = true, event = { "FocusLost", "CursorHold" } }

  -- 特定のファイルタイプのファイルを開いたら読み込む
  use { "fatih/vim-go", opt = true, ft = { "go" } }
  
  -- 開いたフォールドと閉じたフォールド、およびネストされたフォールドを循環させる機能を提供するプラグイン
  -- 特定のキーを叩いたら読み込む
  -- この例ではノーマルモードの <CR> にマッピングしていますが、
  -- モードを指定する場合はテーブルを入れ子にします。
  -- keys = {
  --   { "n", "<CR>" },
  --   { "v", "<CR>" },
  -- }
  use {
    "arecarn/vim-fold-cycle",
    opt = true,
    keys = { "<CR>" },
  }

  -- フォントを変更せずに文字の表示を変更することができるプラグイン
  -- 特定の VimL 関数を呼ぶと読み込む
  -- この例だと、任意の場所で Artify("hoge", "bold") のように呼び出された時に、
  -- このプラグインも読み込まれます。
  use { "sainnhe/artify.vim", opt = true, fn = { "Artify" } }

  -- TODO 利用用途がわからないプラグイン
  -- 条件が真の時のみ読み込みます。条件は起動時に毎回判定されます。
  use {
    "thinca/vim-fontzoom",
    cond = [[vim.fn.has"gui" == 1]], -- GUI の時のみ読み込む。
    -- 関数も指定できます。
    -- conf = function()
    --   return vim.fn.has "gui" == 1
    -- end,
  }

  -- Exコマンドの出力をバッファに表示するプラグイン
  -- 依存関係も管理できます。vim-prettyprint は capture.vim に依存しています。
  use {
    "tyru/capture.vim",
    requires = {
      -- Vimの変数を整形して出力してくれるプラグイン
      { "thinca/vim-prettyprint" },
    },
  }

  -- ウィンドウサイズの変更を簡単・高速にするプラグイン
  use 'simeji/winresizer'



end)
