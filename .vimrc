call has('python3')


set nocompatible " make vim vim not vi
syntax on
set number
set relativenumber
set ignorecase "
set smartcase 
set incsearch " searching as ypu type
set mouse+=a " Enable mouse support
set clipboard=unnamedplus " enable clipboard from outside vim
" set shortmess+=I
set noerrorbells visualbell t_vb= " no error sound

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start
" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" the next line makes tabcompletion nicer if I'm not mistaken (in vim comand
" line)
set wildmenu

set confirm "the nextline makes quitting without saving more friendly


" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.




" filetype plugin indent on
call plug#begin('~/.vim/plugged')

 Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_complete_enabled = 1
let g:vimtex_fold_enabled = 1
autocmd FileType tex setlocal ts=2 sw=2 sts=0 

" Add coc.nvim for completion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

"TabNine - Yet another completion trial
" Plug 'codota/tabnine-vim'

" Auto pairs
 "Plug 'jiangmiao/auto-pairs'

" Add some colorschemes
 Plug 'morhetz/gruvbox'
 Plug 'tomasr/molokai'
 Plug 'fmoralesc/molokayo'
 Plug 'danilo-augusto/vim-afterglow'
 Plug 'tpope/vim-vividchalk' 

" Nicer status bar in vim
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'context'


" On-demand loading		
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

call plug#end()



" Add clipboard copy-paste

"autocmd vimenter * colorscheme vividchalk
" set bg=dark

 
