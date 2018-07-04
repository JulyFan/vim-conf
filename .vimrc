"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 1. color""
syntax enable
set t_Co=256
set background=dark
"set termguicolors
"colorscheme solarized
"colorscheme lizard256 
"colorscheme 256-jungle
colorscheme molokai_dark
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

"" 2. line number""
set nu

"" 3. map <leader>"" 
let mapleader = ','

"" 4. tap and space""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"" 5. max text width in a line""
set textwidth=79

"" 6. file encoding"" 
set termencoding=utf-8
set encoding=utf-8

"" 7. hilight search word""
set hlsearch
set incsearch

"" 8. hilight paire brackets
"set showmatch

"" 9. Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"" 10. enable mouse
"""set mouse=a

"" 11. With a map leader it's possible to do extra key combinations
"" like <leader>w saves the current file
let g:mapleader = "," 

"" 12. Sets how many lines of history VIM has to remember
set history=700

"" 13. Set 7 lines to the cursor - when moving vertically using j/k
"set so=7

"" 14. Always show current position
set ruler
set cursorline

"" 15. Height of the command bar
set cmdheight=2

"" 16. Ignore compiled files
set wildignore=*.o,*~,*.pyc

"" 17. When searching try to be smart about cases 
set smartcase

"" 18. No annoying sound on errors
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500 

"" 19. Turn backup off, since most stuff is in SVN, git et.c anyway...
"set nobackup
"set nowb
set noswapfile

"" 20. Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

"" 21. Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l


"" 22. Close the current buffer
map <leader>bd :Bclose<cr>

"" 23. Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tl :tabp<cr>
map <leader>tr :tabn<cr>

"" 24. Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"" 25. Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr> 

"" 26. Always show the status line
set laststatus=2

" 高亮匹配括号
set showmatch
" 1/10s
set matchtime=1

set magic

" 禁止生成临时文件
set nobackup
set noswapfile

" 在vim外修改过，自动读入
set autoread

"" 27. Format the status line ---using airline instead
"set statusline+=%8*%{HasPaste()}\ %*
"set statusline+=%1*\ %F\ %*
"set statusline+=%2*\ %m%r%h\ %*
"set statusline+=%3*\ %w\ %*
"set statusline+=%4*\ %r%{getcwd()}%h\ %*
"set statusline+=%=%7*\ %{&ff}\ \|\ %y\ \|\ %{''.(&fenc!=''?&fenc:&enc).''}\ \|\ %*
"set statusline+=%5*\ L:%l/%L\ R:%v\ %*
"hi User1 cterm=bold ctermfg=232 ctermbg=179
"hi User2 cterm=None ctermfg=214 ctermbg=242
"hi User3 cterm=None ctermfg=251 ctermbg=240
"hi User4 cterm=bold ctermfg=Cyan ctermbg=239
"hi User5 cterm=None ctermfg=208 ctermbg=238
"hi User6 cterm=None ctermfg=216 ctermbg=237
"hi User7 cterm=None ctermfg=250 ctermbg=239
"hi User8 cterm=None ctermfg=DarkGreen ctermbg=240

"" 28. Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
"nmap <M-j> mz:m+<cr>
"nmap <M-k> mz:m-2<cr>
"vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
"vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z 
"nmap <D-j> <M-j>
"nmap <D-k> <M-k>
"vmap <D-j> <M-j>
"vmap <D-k> <M-k>

"" 29. Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS() 

"" 30. When you press gv you vimgrep after the selected text
"vnoremap <silent> gv :call VisualSelection('gv')<CR>

"" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

"" 31. " Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>

"" 32. " Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"" 33. Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

"" 34. Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

"" 35. " Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

"" 36. code folding
set foldmethod=indent
set foldlevel=99
"" Enable folding with the spacebar
nnoremap <space> za

"" 37. Smart way to move between windows
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

"" 38. add header to python files when created
autocmd bufnewfile *.py call PythonHeader()

"" 39. 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Use bundel config
if filereadable(expand("~/.vimrc.bundle"))
        source ~/.vimrc.bundle
endif


" 40. move window
noremap <leader>l <C-W>L
noremap <leader>h <C-W>H
noremap <leader>k <C-W>K
noremap <leader>j <C-W>J

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 1. Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"" 2. 
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

"" 3. search in visual mode
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"" 4. 
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

"" 5.
function PythonHeader()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "# July @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endfunction
