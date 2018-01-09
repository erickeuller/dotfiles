" Plug Section
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim' 
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'skielbasa/vim-material-monokai'
Plug 'morhetz/gruvbox'
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" Commons
syntax on
set mouse=a
set number
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

" ColorScheme
colorscheme gruvbox
set background=dark

" Airline 
" let g:airline_powerline_fonts = 1

" Elixir Alchemist
let g:alchemist_tag_disable = 1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
