packadd! dracula

"" Turn syntax highlighting on.
syntax enable

""Change color scheme to dracula.
colorscheme dracula

""Disable compatibility with vi which can cause unexpected issues.
set nocompatible

""Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

""Enable plugins and load plugin for the detected file type.
filetype plugin on

""Load an indent file for the detected file type.
filetype indent on

""Set tab width to 4 columns.
set tabstop=4

""Add numbers to each line on the left-hand side.
set number

""Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

""Show the mode you are on the last line.
set showmode

""Use highlighting when doing a search.
set hlsearch

"" Set the commands to save in history default number is 20.
set history=1000

"" Show partial command you type in the last line of the screen.
set showcmd

"" Do not save backup files.
set nobackup

"" Enable auto completion menu after pressing TAB.
set wildmenu

"" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

"" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
