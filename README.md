# .vimrc

## Windows
The following steps were taken on a Windows 7 system:

1. Install gVim from [here](http://www.vim.org/download.php#pc)
1. Install Git from [here](https://git-scm.com/download/win)
1. Open a _Git Bash_ from the Start Menu and install Vundle files (or click [here](https://github.com/VundleVim/Vundle.vim) for the official documentation)
<pre>
git clone https://github.com/VundleVim/Vundle.vim.git $USERPROFILE/_vim/bundle/Vundle.vim
</pre>
4. Paste the following into a new file and save it as %USERPROFILE%/\_vimrc
<pre>
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/_vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'quanganhdo/grb256.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required
</pre>
5. Open gVim and run PluginInstall in command mode
<pre>
:PluginInstall!
</pre>
6. Now you can pick up whatever you want from my gVim configuration from  [here](https://github.com/areisbr/vim/blob/master/.vimrc). Just paste the contents into your _\_vimrc_ file and __remember to update paths__ as it may differ from mine.
