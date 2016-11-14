" map <leader>
let mapleader = ','

" =====================vindle setting======================
" ":BundleList - list configured bundles  
" ":BundleInstall(!) - install(update) bundles  
" ":BundleSearch(!) foo - search(or refresh cache first) for foo  
" ":BundleClean(!) - 删除插件首先要在.vimrc中注释掉插件相应的行，再运行该命令
set nocompatible              " required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
" Bundle 'davidhalter/jedi'
" Plugin 'scrooloose/syntastic'
Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'kien/ctrlp.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'klen/python-mode'
Bundle 'scrooloose/nerdtree'

Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'

" non github repos
Bundle 'https://github.com/Lokaltog/vim-powerline.git'

" All of your Plugins must be added before the following line 
call vundle#end()            " required
filetype plugin indent on    " required


" =======================vim normal setting ===================

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" enable folding
" set foldmethod=indent
" set foldlevel=99
" enable folding with the spacebar
" nnoremap <space> za

" PEP8 indent
"au BufNewFile,BufRead *.py set tabstop=4
"au BufNewFile,BufRead *.py set softtabstop=4
"au BufNewFile,BufRead *.py set shiftwidth=4
"au BufNewFile,BufRead *.py set textwidth=79
"au BufNewFile,BufRead *.py set expandtab
"au BufNewFile,BufRead *.py set autoindent
"au BufNewFile,BufRead *.py set fileformat=unix

" for full stack dev
"au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
"au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
"au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

" redundant white space
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf-8
set encoding=utf-8


" highlight
let python_highlight_all=1
syntax on


" line number
set nu

" no swap file
set noswapfile

" backspace
set backspace=2


" fold
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
set foldclose=all
nnoremap <space> @=((foldclosed(line('.')) < 0)?'zc':'zo')<CR>


" hilight search
set hlsearch

" 
"" set termguicolors

" background
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorschem solarized
" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
" 	project_base_dir = os.environ['VIRTUAL_ENV']
" 	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
" 	execfile(activate_this, dict(__file__=activate_this))
" EOF


" =======================vim plugin setting ===================

" YouCompleteMe
"" let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_python_binary_path = 'python'
"" let g_ycm_path_to_python_interpreter = ''
let g:ycm_confirm_extra_conf = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_seed_identifiers_with_syntax = 1
"" let g:ycm_key_invoke_completion = '<M-p>'
"" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" color
" if has('gui_running')
"     set background=dark
"     colorscheme solarized
" else
"     colorscheme zenburn
""    colorscheme solarized
" endif

" solarized switch dark and light
"" call togglebg#map("<F2>")


" powerline
set laststatus=2
let g:Powerline_symbols='fancy'


" pymode
let g:pymode_rope = 0
let g:pydoc = 1
"" let g:pydoc_key = 'K'
" lint
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_folding = 0
" completion



" nerdtree
"" map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <leader>e :NERDTreeToggle<CR>

" ctrlp using default


" jedi using default
" cancle this <leader>r command, conflict with pymode run python command 
let g:jedi#rename_command = '' 

" syntastic
"" let g:syntastic_error_symbol='>>'
"" let g:syntastic_warning_symbol='>'
"" let g:syntastic_check_on_open=1
"" let g:syntastic_check_on_wq=0
"" let g:syntastic_enable_highlighting=1
"" let g:syntastic_python_checkers=['pyflakes']
"" let g:syntastic_always_populate_loc_list=0
"" let g:syntastic_auto_loc_list=0
"" let g:syntastic_loc_list_height=5

" toggle tagbar display
map <leader>tb :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1
