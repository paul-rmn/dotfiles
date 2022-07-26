"Things I want to do...
"
"unify vim config and everything else
"
"The next couple are inspired by  benbrastmckie's videos:
"
"-goyo?
"
"-highlight line so I know hwere I the line ends
"
"-floatterm and lazygit???
"
"-signify?? to have those + adn - to know what changed since last etc??
"
"-vim-which-key or some sort of cheatsheet and instead of \ll, \lv, \le - I'd
"prefer key+l, key+v and key+e, where key could be either space or ,




call has('python3')


set nocompatible " make vim vim not vi
syntax on
set number
set relativenumber
set ignorecase "
set smartcase 
set incsearch " searching as ypu type
set mouse=a " Enable mouse support
set colorcolumn=80 
highlight ColorColumn ctermbg=5

"Tried cursorline but the actual line put me off. I only wanted the background 
"set cursorline 
"highlight CursorLine ctermbg=233


if !has('nvim')
set ttymouse=sgr " Make mouse clickable with alacritty
endif

if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else 
  set clipboard=unnamedplus "Linux
endif
"
set noerrorbells visualbell t_vb= " no error sound

"tabstops
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


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




filetype plugin indent on
call plug#begin('~/.vim/plugged')

 Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
"if system('uname -s') == "Darwin\n"
" let g:vimtex_view_method = 'skim'
" let g:vimtex_view_skim_sync = 1 "OSX
"else 
let g:vimtex_view_method = 'zathura' "Linux
"endif

let g:vimtex_quickfix_mode=0
let g:vimtex_complete_enabled = 1
let g:vimtex_fold_enabled = 1
set conceallevel=2
hi clear Conceal
autocmd FileType tex setlocal ts=2 sw=2 sts=0 

"Vim-fugitive for better git inside vim
Plug 'tpope/vim-fugitive'

"sartify for a nice welcome screen
Plug 'mhinz/vim-startify'

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

" Fuzzyfinder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Make sure you use single quotes
 "Plug 'junegunn/seoul256.vim'
 "Plug 'junegunn/vim-easy-align'

"Goyo and limelight for focus"
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'context'

" make css colors colorful
 Plug 'ap/vim-css-color'

" On-demand loading		
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 "Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


call plug#end()
