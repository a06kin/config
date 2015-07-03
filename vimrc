set nocompatible

syntax on

execute pathogen#infect()

"-- NERD TREE --
autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

"-- THEME --
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
colorscheme obsidian
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ai
set guifont=Source\ Code\ Pro:h11
set transparency=10

"-- SYNTASTIC --
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_save = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

"-- plugin menu
let g:headlights_use_plugin_menu = 1 

"--eclim java
filetype plugin indent on

