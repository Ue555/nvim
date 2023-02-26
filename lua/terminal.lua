vim.cmd [[

" Terminal を開くとデフォルトでインサートモードの設定 
autocmd TermOpen * startinsert

" :Tコマンドで Terminal を開くと現在のウィンドウの下部に別ウィンドウで表示されるようにするの設定
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>

" Terminal のインサートモードを抜けるコマンドの設定
:tnoremap <Esc> <C-\><C-n>:q<enter>

]]
