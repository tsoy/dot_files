set rtp+=~/.vim/bundle/Vundle.vim/
set backspace=indent,eol,start
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'L9'
Plugin 'FuzzyFinder'

" Ack Ubuntu istallation
" sudo apt-get install ack-grep
" sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
" http://beyondgrep.com/install/
" Ack Windows installation
" To use ack  on Windows it's required to install it throug chocolatey
" https://github.com/chocolatey/chocolatey/wiki/Installation
" cinst ack

Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

"Plugin 'Valloric/YouCompleteMe'


Bundle 'vim-ruby/vim-ruby'

call vundle#end()

set nocompatible
set number

" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf8
set guifont=Anonymice\ Powerline:h15
set t_Co=256

autocmd Filetype yaml setlocal tabstop=2
autocmd Filetype yaml setlocal shiftwidth=2
"Anonymous Pro for Powerline

" No beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" solarized options 

set background=dark

colorscheme solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
" colors solarized
syntax on
"Next 3 lines are taken from https://github.com/vim-ruby/vim-ruby/wiki/VimRubySupport for vim-ruby plugin support
filetype on "Enabling filetype detection
filetype indent on "Enabling filtetype specific indenting
filetype plugin on "Enabling filetype specific plugins

" Animals as leaders (Buffers as tabs for using airline plugin)
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1

" CTRL P plugin shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Tagbar plugin shortcut

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" -----------------------------
" scrooloose/syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ------------------------------

