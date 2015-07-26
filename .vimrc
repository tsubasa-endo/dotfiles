 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'Shougo/neomru.vim'
 NeoBundle 'Shougo/vimproc'
 NeoBundle 'The-NERD-tree'
 NeoBundle 'The-NERD-Commenter'
 NeoBundle 'Gist.vim'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'tomtom/tcomment_vim'
 NeoBundle 'bronson/vim-trailing-whitespace'
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'tpope/vim-surround'
 NeoBundle "kana/vim-smartinput"

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 """"""""""""""""""""""""""""""
 " 各種オプションの設定
 """"""""""""""""""""""""""""""

 "タブ入力を複数の空白入力に置き換える
 set expandtab
 "画面上でタブ文字が占める幅
 set tabstop=2
 "自動インデントでずれる幅
 set shiftwidth=2
 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
 set softtabstop=2
 "改行時に前の行のインデントを継続する
 set autoindent
 "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
 set smartindent
 " コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
 set wildmenu
 " 対応する括弧やブレースを表示する
 set showmatch
 " 暗い背景色に合わせた配色にする
 set background=dark
 " ペースト時のインデントを調整
 set pastetoggle=<F12>
 nnoremap <F12> :set paste!<CR>:set paste?<CR>

" " grep検索の実行後にQuickFix Listを表示する
" autocmd QuickFixCmdPost *grep* cwindow

" " http://blog.remora.cx/2010/12/vim-ref-with-unite.html
" " """"""""""""""""""""""""""""""
" " Unit.vimの設定
" " """"""""""""""""""""""""""""""
" " 入力モードで開始する
" let g:unite_enable_start_insert=1
" " バッファ一覧
" noremap <C-P> :Unite buffer<CR>
" " ファイル一覧
" noremap <C-N> :Unite -buffer-name=file file<CR>
" " 最近使ったファイルの一覧
" noremap <C-Z> :Unite file_mru<CR>
" " sourcesを「今開いているファイルのディレクトリ」とする
" noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" " ウィンドウを分割して開く
" au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" " ESCキーを2回押すと終了する
" au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
" au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
