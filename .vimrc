set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" if you use Vundle, load plugins:
"Plugin 'python-mode/python-mode'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/Ultisnips'
Plugin 'ivanov/vim-ipython'
Plugin 'scrooloose/nerdtree'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/swapcol.vim'

" do not exceed 100 cols
set colorcolumn=101

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

:set relativenumber
syntax on
:set backspace=indent,eol,start

autocmd StdinReadPre * let s:std_in=1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif"离开插入模式后自动关闭预览窗口

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
wincmd w
autocmd VimEnter * wincmd w

set laststatus=2
set wildmode=list:longest
set nu!
