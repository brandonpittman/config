" vim:foldmethod=marker
" settings {{{
filetype plugin indent on
syntax enable
if &shell =~# 'fish$' | set shell=sh | endif
if executable('rg') | set grepprg=rg\ --vimgrep | endif
if exists("&inccommand") | set inccommand=nosplit | endif
if has('conceal') | set conceallevel=2 concealcursor=niv | endif
let g:mapleader = ' '
let g:maplocalleader = ','
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
let g:html_indent_tags = 'li\|p'
let g:is_posix = 1
let g:sort_motion_flags = 'ui'
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
set autoread
set autowriteall
set backspace=indent,eol,start
set complete+=.,b,u,],w,t
set cursorline cursorcolumn
set dictionary+="/usr/dict/words"
set foldcolumn=3
set foldenable
set foldmethod=syntax
set formatprg=par\ w74
set gdefault
set hidden
set history=100
set hlsearch
set ignorecase smartcase infercase
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮
set nobackup
set nojoinspaces
set noshowmode
set nostartofline
set noswapfile
set notimeout
set nowritebackup
set number
set numberwidth=5
set path+=src,**
set relativenumber
set ruler
set shiftround
set shortmess+=c
set shortmess=atI
set showcmd
set showcmd
set splitbelow
set splitright
set suffixesadd+=.js,.coffee,.sass,.scss,.haml
set synmaxcol=1200
set t_Co=256
set tagbsearch
set tags+=.tags,tags,gems.tags
set textwidth=0
set ttimeoutlen=100
set undodir=~/.config/nvim/undo
set undofile
set undolevels=1000
set undoreload=10000
set viewoptions=cursor,folds,slash,unix
set visualbell
set wildcharm=<C-z>
set wildignore+=*.gif,*.jpg,*.png,*.log
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.swp,*~,._*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/resources/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=.DS_Store
set wildignore+=node_modules/*
set wildmenu
set wildmode=list:longest,list:full
" settings }}}
" autocommands {{{
augroup vimrcEx
  autocmd!
  " autocmd BufEnter,BufWriteCmd init.vim highlight OverLength ctermbg=grey guibg=#592929
  " autocmd BufEnter,BufWriteCmd init.vim match OverLength /\%80v.*/
  " autocmd BufEnter,BufWritePost *^{txt,md}$ highlight OverLength ctermbg=grey guibg=#592929
  " autocmd BufEnter,BufWritePost *^{txt,md}$ match OverLength /\%80v.*/
  " autocmd BufNewFile,BufRead *.applescript setf applescript
  " autocmd BufReadPost Rakefile setf ruby
  " autocmd BufReadPost {Brew,Rake}file set commentstring=#\ %s
  " autocmd FileType applescript set commentstring=--\ %s
  autocmd BufEnter,BufWriteCmd *.fish setf fish
  autocmd BufLeave,FocusLost * silent! update
  autocmd BufReadPost * if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
  autocmd FileType fish compiler fish
  autocmd FileType html,css,slim,eruby,haml,handlbars,sass,scss,php EmmetInstall
  autocmd FileType setlocal foldmethod=expr
  autocmd Filetype ruby nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
  autocmd Filetype ruby nmap <leader>c :%.!seeing_is_believing --clean<CR>;
  autocmd Filetype ruby nmap <leader>m A # => <Esc>
  autocmd Filetype ruby nmap <leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
  autocmd Filetype ruby vmap <leader>m :norm A # => <Esc>
  autocmd InsertLeave * if expand('%') != '' | silent write | endif
  autocmd VimResized * :wincmd =
augroup END
" autocommands }}}
" remaps {{{
command! -nargs=+ Rg execute 'silent grep! <args>' | copen 10
nnoremap <leader>r :Rg
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ef :vsp $CONFIG/fish/config.fish<CR>
nnoremap <leader>ep :vsp $CONFIG/nvim/packages.vim<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<Cr>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
inoremap <C-U> <C-G>u<C-U>
inoremap <c-d> <esc>ddi
inoremap <c-f> <c-x><c-f>
inoremap jj <esc>
nnoremap <Leader># :execute "rightbelow vsplit " . bufname("#")<CR>
nnoremap <Leader>U guu mm:s/\v<(\w)/\U\1/g<CR><CR>`m
vnoremap <Leader>U guu mm:s/\v<(\w)/\U\1/g<CR><CR>`m
nnoremap <leader>P :!open -a "Marked 2" "%"<cr><cr>
nnoremap <silent><leader>0 :set foldlevel=0<CR>
nnoremap <silent><leader>9 :set foldlevel=9<CR>
nmap j gj
nmap k gk
nnoremap ! :!
nnoremap & :&&<CR>
nnoremap <Leader><Leader> za
nnoremap <Leader>\ <C-^>
nnoremap <silent> <Leader>w :write<CR>
nnoremap Q @q
vnoremap < <gv
vnoremap > >gv
if has('nvim')
  tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'"'
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>]
  " Terminal mode:
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
  " Insert mode:
  inoremap <M-h> <Esc><c-w>h
  inoremap <M-j> <Esc><c-w>j
  inoremap <M-k> <Esc><c-w>k
  inoremap <M-l> <Esc><c-w>l
  " Visual mode:
  vnoremap <M-h> <Esc><c-w>h
  vnoremap <M-j> <Esc><c-w>j
  vnoremap <M-k> <Esc><c-w>k
  vnoremap <M-l> <Esc><c-w>l
  " Normal mode:
  nnoremap <M-h> <c-w>h
  nnoremap <M-j> <c-w>j
  nnoremap <M-k> <c-w>k
  nnoremap <M-l> <c-w>l
endif
" remaps }}}
" functions {{{
function! Formd(option)
  :let l:save_view = winsaveview()
  :let l:flag = a:option
  :if l:flag == "-r"
  :%! ~/Library/Scripts/formd/formd -r
  :elseif l:flag == "-i"
  :%! ~/Library/Scripts/formd/formd -i
  :else
  :%! ~/Library/Scripts/formd/formd -f
  :endif
  :call winrestview(l:save_view)
endfunction

command! -nargs=1 OF :call system('omnifocus ' . "'" . <args> . "'")

" Converts Japanese-encoded files to UTF8
function! SJIS2UTF()
  e ++enc=sjis
  set fileencoding=utf8
  silent write
  echohl InfoMsg | echom "Successfully converted " . expand("%") . " to UTF-8" | echohl None
endfunction
" functions }}}
" packages {{{
source ~/.config/nvim/packages.vim
" packages }}}
