set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'quanganhdo/grb256.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
syntax on
set laststatus=2
set clipboard=unnamedplus 
set wildmenu

if has("gui_running")
  set background=dark
  highlight SignColumn guibg=black
  highlight Visual guibg=#505050
  highlight Type guifg=#ffff76
  highlight WildMenu guifg=black
  set guioptions=aegirLt
  set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
  set guifont=Cousine\ for\ Powerline\ 14
  "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 12 
  "set guifont=Inconsolata\ for\ Powerline\ 16 
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
  color jellybeans
endif
