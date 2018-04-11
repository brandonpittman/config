" vim:foldmethod=marker
" minpac {{{
silent! packadd minpac

command! -bar PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! -bar PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
" minpac }}}
" syntax plugins {{{
call minpac#add('davidoc/taskpaper.vim')
call minpac#add('StanAngeloff/php.vim')
call minpac#add('captbaritone/better-indent-support-for-php-with-html')
call minpac#add('Shougo/echodoc.vim')
call minpac#add('ap/vim-css-color')
call minpac#add('Shougo/neoinclude.vim')
call minpac#add('Shougo/neomru.vim')
call minpac#add('calebeby/ncm-css')
call minpac#add('elzr/vim-json')
call minpac#add('Shougo/context_filetype.vim')
call minpac#add('mattreduce/vim-mix')
call minpac#add('mustache/vim-mustache-handlebars')
call minpac#add('ElmCast/elm-vim')
call minpac#add('cespare/vim-toml')
call minpac#add('dag/vim-fish')
" call minpac#add('joereynolds/deoplete-minisnip')
" call minpac#add('pbogut/deoplete-elm') "Elm deoplete source
call minpac#add('plasticboy/vim-markdown')
" call minpac#add('ponko2/deoplete-fish')
" call minpac#add('sebastianmarkow/deoplete-rust')
call minpac#add('sgur/vim-editorconfig')
" call minpac#add('slashmili/alchemist.vim') "Elixir deoplete source
call minpac#add('rust-lang/rust.vim')
call minpac#add('racer-rust/vim-racer')
call minpac#add('roxma/nvim-cm-racer')
call minpac#add('Shougo/neco-vim')
call minpac#add('Shougo/neco-syntax')
call minpac#add('wellbredgrapefruit/tomdoc.vim')
call minpac#add('vim-pandoc/vim-pandoc-syntax')
call minpac#add('vim-pandoc/vim-pandoc')
" let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
" let g:pandoc#filetypes#pandoc_markdown = 1
" syntax plugins }}}
" splitjoin {{{
call minpac#add('AndrewRadev/splitjoin.vim')
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>
" splitjoin }}}
" switch.vim {{{
call minpac#add('AndrewRadev/switch.vim')
nnoremap - :Switch<cr>
" switch.vim }}}
" delimitMate {{{
call minpac#add('Raimondi/delimitMate')
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_inside_quotes = 1
let g:delimitMate_expand_space = 1
" delimitMate }}}
" fzf {{{
call minpac#add('junegunn/fzf', {'do': './install --all'})
nnoremap <C-p> :<C-u>FZF<CR>
" fzf }}}
" vim-test {{{
call minpac#add('janko-m/vim-test')
let g:test#strategy = 'dispatch'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let g:test#ruby#minitest#options = '--verbose'
let g:test#ruby#rspec#options = {
  \ 'nearest': '--backtrace',
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
\}
" vim-test }}}
" vim-abolish {{{
call minpac#add('tpope/vim-abolish')
let g:abolish_save_file = expand('~/dotfiles/config/nvim/after/plugin/abolish.vim')
" vim-abolish }}}
" vim-minisnip {{{
call minpac#add('joereynolds/vim-minisnip')
let g:minisnip_dir = '~/dotfiles/config/nvim/snippets'
" vim-minisnip }}}
" vim-easy-align {{{
call minpac#add('junegunn/vim-easy-align')
nmap ga <Plug>(EasyAlign)
xmap ga  <Plug>(EasyAlign)
let g:easy_align_delimiters = {
\ '<': { 'pattern': '<<\|=<\|<', 'left_margin': 1, 'right_margin': 0 },
\ '>': { 'pattern': '>>\|=>\|>', 'left_margin': 0, 'right_margin': 1, 'stick_to_left': 0 },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }
" vim-easy-align }}}
" dispatch {{{
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
" dispatch }}}
" miscellaneous {{{
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('roxma/vim-paste-easy')
call minpac#add('majutsushi/tagbar')
call minpac#add('roxma/nvim-completion-manager')
call minpac#add('roxma/ncm-rct-complete')
call minpac#add('roxma/ncm-elm-oracle')
call minpac#add('EinfachToll/DidYouMean')
call minpac#add('FooSoft/vim-argwrap')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('daaugusto/spelllangidentifier')
call minpac#add('dietsche/vim-lastplace')
call minpac#add('mattn/webapi-vim')
call minpac#add('mhinz/vim-startify')
call minpac#add('junegunn/vim-peekaboo')
call minpac#add('junegunn/vim-pseudocl')
" miscellaneous }}}
" goyo {{{
call minpac#add('junegunn/goyo.vim')
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" goyo }}}
" matching {{{
" call minpac#add('jeetsukumaran/vim-indentwise')
" call minpac#add('Shougo/neopairs.vim')
" call minpac#add('jwhitley/vim-matchit')
" call minpac#add('jiangmiao/auto-pairs')
" matching }}}
" vim-oblique {{{
call minpac#add('junegunn/vim-oblique')
augroup Oblique
  autocmd!
  au User Oblique       normal! zz
  au User ObliqueRepeat normal! zz
  au User ObliqueStar   normal! zz
augroup END
let g:oblique#prefix = '\v'
let g:oblique#incsearch_highlight_all = 1
" vim-oblique }}}
" textobj {{{
" call minpac#add('beloglazov/vim-textobj-quotes')
" call minpac#add('christoomey/vim-sort-motion')
" call minpac#add('junegunn/vim-after-object')
" call minpac#add('kana/vim-textobj-indent')
" call minpac#add('kana/vim-textobj-line')
" call minpac#add('kana/vim-textobj-syntax')
call minpac#add('kana/vim-textobj-user')
" call minpac#add('machakann/vim-textobj-delimited')
" call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('godlygeek/tabular')
call minpac#add('jlemetay/permut')
call minpac#add('kana/vim-textobj-entire')
" textobj }}}
" vim-ledger {{{
call minpac#add('ledger/vim-ledger')
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '  JPY  -'
let g:ledger_detailed_first = 1
let g:ledger_fold_blanks = 0
au BufRead,BufEnter *.dat setf ledger
" vim-ledger }}}
" emmet {{{
call minpac#add('mattn/emmet-vim')
let g:user_emmet_mode='a'
let g:user_emmet_settings = {
   \  'php' : {
     \    'extends' : 'html',
     \    'filters' : 'c',
     \  },
   \  'xml' : {
     \    'extends' : 'html',
     \  },
   \  'scss' : {
     \    'extends' : 'css',
     \  },
   \  'sass' : {
     \    'extends' : 'css',
     \  },
   \  'erb' : {
     \    'extends' : 'html',
     \  },
   \  'eruby' : {
     \    'extends' : 'html',
     \  },
   \  'handlebars' : {
     \    'extends' : 'html',
     \  }
   \}

let g:user_emmet_mode='a'
let g:user_emmet_complete_tag = 1
let g:user_emmet_install_global = 0
" emmet }}}
" gist-vim {{{
call minpac#add('mattn/gist-vim')
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_get_multiplefile = 1
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
" gist-vim }}}
" undotree {{{
call minpac#add('mbbill/undotree')
nnoremap <Leader>gt :UndotreeToggle<CR>
" undotree }}}
" sayonara {{{
call minpac#add('mhinz/vim-sayonara')
nnoremap <silent> <leader>q :Sayonara<CR>
nnoremap <silent> <leader>Q :Sayonara!<cr>
nnoremap <silent> <leader>q :if expand('%') =~ 'sni{p,ppets}$' <bar> silent write <bar> elseif expand('%') != '' <bar> update <bar> endif <bar> Sayonara<cr>
" sayonara }}}
" colorscheme {{{
call minpac#add('dracula/vim')
" colorscheme dracula
call minpac#add('arcticicestudio/nord-vim')
colorscheme nord
let g:nord_italic = 1
let g:nord_italic_comments = 1
" colorscheme }}}
" tpope plugins {{{
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-fugitive')
augroup Fugitive
  au BufReadPost fugitive://* set bufhidden=delete
  au User fugitive if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' | nnoremap <buffer> .. :edit %:h<CR> | endif
augroup END
" set statusline=%<%f\ %h%m%r%y\ %{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" tpope plugins }}}
" lightline {{{
call minpac#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'filename': 'LightlineFilename'
      \ },
      \ }
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
" lightline }}}
" deoplete {{{
" call minpac#add('Shougo/deoplete.nvim')
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

" function! s:my_cr_function() abort
"   return deoplete#close_popup() . "\<CR>"
" endfunction
" deoplete }}}
" ALE {{{
call minpac#add('w0rp/ale')
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
      \  'javascript': ['eslint']
      \ }
let g:ale_fixers = {
      \    'php' : ['trim_whitespace', 'remove_trailing_lines'],
      \   'javascript': ['eslint'],
      \}
let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 1
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 'on_save'
" let g:ale_keep_list_window_open = 1
nmap <F8> <Plug>(ale_fix)
" ALE }}}
" vue {{{
call minpac#add('posva/vim-vue')
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
" vue }}}
" neoterm {{{
call minpac#add('kassio/neoterm')
let g:neoterm_autoinsert = 1
let g:neoterm_autojump = 1
" let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'
nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSendLine<cr>
vnoremap <silent> <f9> :TREPLSendSelection<cr>
" or use keymaps that works with text-objects
nmap gx <Plug>(neoterm-repl-send)
xmap gx <Plug>(neoterm-repl-send)
nmap gxx <Plug>(neoterm-repl-send-line)
" now can use gx{text-objects} such as gxip
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>
" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate
" Git commands
command! -nargs=+ Tg :T git <args>
" neoterm }}}
" obvious-resize {{{
call minpac#add('talek/obvious-resize')
noremap  <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap  <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap  <silent> <C-Right> :<C-U>ObviousResizeRight<CR>
noremap  <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
" obvious-resize }}}
" dadbod {{{
call minpac#add('tpope/vim-dadbod')
" dadbod }}}
call minpac#add('pangloss/vim-javascript')
