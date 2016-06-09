set term=screen-256color
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" vim-airline (Powerline for Vim)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Now we can turn our filetype functionality back on
filetype plugin indent on

" turns airline on always
set laststatus=2

let g:airline_powerline_fonts = 1 

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set nu
