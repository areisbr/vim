function! SetProjectRoot()
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  if empty(matchstr(git_dir, '^fatal:.*'))
    lcd `=git_dir`
  endif
endfunction

function! CheckLongLines(cols)
  if has("gui_running")
    highlight OverLength guifg=darkred 
    execute 'match OverLength /\%'.a:cols.'v.\+/'
  endif
endfunction

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
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline#extensions#tabline#enabled = 1
if has("gui_running") && (has("mac") || has("unix"))
  let g:airline_powerline_fonts = 1
endif
set expandtab autoindent tabstop=2 shiftwidth=2 number
set clipboard=unnamedplus switchbuf+=newtab
set wildmenu
set laststatus=2
syntax on

nmap <F8> :!ctags -R -f ~/.vim/tags/libc --c-kinds=+p /usr/include<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :Tagbar<CR>
nmap <Leader>o :TagbarToggle<CR>
nmap <Leader>t :tabnew<CR>
nmap <Leader>n :tabnext<CR>
nmap <Leader>p :tabprevious<CR>
nmap <Leader>w :tabclose<CR>
nmap <Leader>d :bdelete<CR>
nmap <C-CR> <C-w><C-]><C-w>T

if has("gui_running")
  set background=dark
  highlight SignColumn guibg=black
  highlight Visual guibg=#505050
  highlight Type guifg=#ffff76
  highlight WildMenu guifg=black
  set guioptions=agit
  set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
  if has("win32") || has("win64")
    set guifont=Consolas
  else
    set guifont=Cousine\ for\ Powerline
  endif
  "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 12 
  "set guifont=Inconsolata\ for\ Powerline\ 16 
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
  color jellybeans
endif

autocmd BufRead * call SetProjectRoot()
