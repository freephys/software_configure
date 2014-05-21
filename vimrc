" .vimrc

" {{{ Vundle
" Of course

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'


"Make Git pervasive in vim ( :Gblame + Glog + many more )
Plugin 'tpope/vim-fugitive'

" file navigator gutter
Plugin 'scrooloose/nerdtree.git'
 
" awesome syntax highlighting
" TODO: Figure out how to enable correctly for Ruby.
Plugin 'scrooloose/syntastic'

" Search everything in the current dir via :Ack
Plugin 'mileszs/ack.vim'

"visualize your Vim undo tree
Plugin 'sjl/gundo.vim'

"provide support for textual snippets, similar to TextMate or other Vim plugins like UltiSnips. 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" ultisnips Track the engine.
Bundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"fork of main project https://code.google.com/p/conque/
" run interactive programs such as ipython inside vim buffer
Plugin 'iknups/ConqueTerm'

"Sending lines to IPython
Plugin 'ivanov/vim-ipython'

"using vim as a front end to a debugger. Pyclewn currently supports gdb and pdb
"Plugin 'xieyu/pyclewn'

"GDB debugger
Plugin 'cgdb/cgdb'

"Vim syntax files with C++11 support
Plugin 'vim-jp/cpp-vim'
Plugin 'vim-scripts/c.vim'
"mirror of http://www.vim.org/scripts/script.php?script_id=3239
Plugin 'vim-scripts/minibufexplorerpp'

"running your tests (with py.test) from within VIM.
Plugin 'alfredodeza/pytest.vim'

"opening files and buffers with a minimal number of keystrokes
Plugin 'wincent/Command-T'

"integrates Python documentation system into Vim
Plugin 'fs111/pydoc.vim'

"runs make and shows the test run status with a red or green bar
Plugin 'reinh/vim-makegreen'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


"""
"Further configuration for plugins

"Map F4 for GundoToggle
nnoremap <F4> :GundoToggle<CR>
"Map F7 to start ipython for ivanov/vim-ipython
noremap <silent> <F7> :!ipython qtconsole &>/dev/null &<CR>

"scrooloose/syntastic
" configue syntastic to do syntax checker
" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
 \ 'active_filetypes': [],
 \ 'passive_filetypes': ['html'] }
 " Use flake8
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'


"navigate the MiniBufExplorer without going into the MiniBufExplorer window
let g:miniBufExplMapCTabSwitchBufs = 1 

"Configure vim for code folding"
set foldignore=
set foldmethod=indent  "fold based on indent
set foldnestmax=10 "deepest fold is 10 levels
set nofoldenable  "dont fold by default
set foldlevel=1 
" add gist-vim plugin 
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
