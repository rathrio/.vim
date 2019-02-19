call plug#begin('~/.vim/plugged')
" Snipmate and its dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" Snippet collection
Plug 'honza/vim-snippets'
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Alignment
Plug 'junegunn/vim-easy-align'
" Colorpicker
Plug 'KabbAmine/vCoolor.vim'
" Change bg color of hex codes, etc in buffer
Plug 'ap/vim-css-color'
" Painless tmux navigation
Plug 'christoomey/vim-tmux-navigator'
" Color scheme
Plug 'dracula/vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'skielbasa/vim-material-monokai'
" Fancy Test commands
Plug 'janko-m/vim-test'
" " Complete matching pairs
" Plug 'jiangmiao/auto-pairs'
" Automaticallly generate tag files
Plug 'ludovicchabant/vim-gutentags'
" Async search with ack
Plug 'wincent/ferret'
" More text objects
Plug 'wellle/targets.vim'
" Fancy rails commands
Plug 'tpope/vim-rails'
" For subvert command
Plug 'tpope/vim-abolish'
" Comment/Uncomment with gc
Plug 'tpope/vim-commentary'
" Used to dispatch stuff to tmux
Plug 'tpope/vim-dispatch'
" Smart 'end' completion in Ruby
Plug 'tpope/vim-endwise'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Improved dot
Plug 'tpope/vim-repeat'
" Readline 4 life
Plug 'tpope/vim-rsi'
" You surround
Plug 'tpope/vim-surround'
" Useful shortcuts for everything
Plug 'tpope/vim-unimpaired'
" Slim up newtr
Plug 'tpope/vim-vinegar'
" Async linting
" Plug 'w0rp/ale'
" Configurable LSP Client
" Plug 'autozimu/LanguageClient-neovim', {
"       \ 'branch': 'next',
"       \ 'do': 'bash install.sh',
"       \ }
" Languages and Snippets
Plug 'sheerun/vim-polyglot'
" Web assembly support
Plug 'rhysd/vim-wasm'
" ES6 Support
Plug 'isRuslan/vim-es6'
" TSX
Plug 'peitalin/vim-jsx-typescript'
" Opinionated formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 't9md/vim-ruby-xmpfilter'
" Plug 'justinj/vim-react-snippets'
" Plug 'racer-rust/vim-racer'
" Plug 'autozimu/LanguageClient-neovim', {
" \ 'branch': 'next',
" \ 'do': 'bash install.sh',
" \ }
call plug#end()

" Show line numbers
" set number
" Relative line numbers
" set rnu
" Always show status line
set laststatus=2
" Statusline
set statusline=%f               " Relative path to file
set statusline+=\ %h            " Help flag [Help]
set statusline+=%m              " Modified flag [+] or [-]
set statusline+=%=              " Switch to right side
set statusline+=%-10(%l,%c%V%)  " Line and col numbers
set statusline+=\ %P            " Percentage
" Show row and column in status bar
" set ruler
" No backups
set noswapfile
set nobackup
set nowritebackup
" Encoding and stuff
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix
" Smart indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
" Disable cursor blink
" set gcr=a:blinkon0
" Shut the fuck up
set novisualbell
set noerrorbells
set history=1000
" Set to auto read when a file is changed from the outside
set autoread
" Scroll horizontally to see entire line. No automatic wrapping
set nowrap
" Ignore case when searching
set ignorecase
" Only consider capital letters when explicitly typed
set smartcase
" Show matching brackets when text indicator is over them
set showmatch
" Highlight dynamically as pattern is typed
set incsearch
" Don't highlight matches by default
set nohlsearch
" Jump to matches when entering regexp
set showmatch
" Use case of typed text and not the match when completing
" set infercase
" Don't kill buffer when closed.
set hidden
" Don’t show the intro message when starting Vim
set shortmess=atIc
" Show the filename in the window titlebar
set title
" Show the current mode
set showmode
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show invisible characters
set list
set listchars=tab:»·,trail:·,nbsp:_
" Scrolling
set scrolloff=5 " Start scrolling when we're 7 lines away from margins
set sidescrolloff=5
set sidescroll=1
" Optimize for fast terminal connections
set ttyfast
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/log/*,*/data/*,*/doc/*,*/.yardoc/*,*.pdf,*/*.history/*
" Enhance command-line completion
set wildmenu
" Add the g flag to search/replace by default
set gdefault
" Don’t add empty newlines at the end of files
" set noendofline
" Word completion when spell checking enabled
set complete+=kspell
" Fix for alecompletion
" set completeopt+=noinsert
" Use rg as search backend
set grepprg=rg\ --vimgrep
" Only redraw when necessary
set lazyredraw
set backspace=indent,eol,start
" More intuitive split behaviour
set splitbelow
set splitright
" Persist history
set undodir=~/.vim/undodir
set undofile
set undolevels=5000
" Use old regex engine for ruby performance
set regexpengine=1
" Match angle brackets
set matchpairs+=<:>,«:»
" Don't assume octal base for numbers with leading 0
set nrformats-=octal
" Delete comment char when joining lines
set formatoptions+=j
set ttimeout
set ttimeoutlen=50
set shell=/bin/zsh
set confirm
" Enable mouse in all modes
set mouse=a
" Copy to OSX clipboard
set clipboard=unnamed
" Only highlight first 400 columns
" set synmaxcol=400
" Use 24-bit color
" set termguicolors

syntax on

" Dracula
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

" Solarized
" set background=dark
" colorscheme solarized

" Monokai
" set background=dark
" set termguicolors
" colorscheme material-monokai
" let g:materialmonokai_italic=1
" let g:materialmonokai_subtle_spell=1

augroup configgroup
  autocmd!

  " Automatically wrap text after 80 lines in markdown files
  autocmd BufRead,BufNewFile *.md set wm=2 tw=80

  " Treat .json files as .js
  autocmd BufRead,BufNewFile *.json setfiletype json syntax=javascript

  autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

  " Custom filetypes
  autocmd BufRead,BufNewFile *.prawn,*.axlsx set filetype=ruby
  autocmd BufRead,BufNewFile *.md,*mdown set filetype=markdown
  autocmd BufRead,BufNewFile .prettierrc set filetype=json

  autocmd BufEnter *.rb syn match error contained "\<binding.pry\>"

  " More indentation for C code
  autocmd BufRead,BufNewFile *.c set shiftwidth=4 tabstop=4 softtabstop=4

  " Start neovim terminal in insert mode
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert

  " Enable autocomplete for ruby files
  " autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

  " Highlight fenced code blocks in markdown files
  let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']

  " Where to enable spell checking by default
  autocmd BufRead,BufNewFile *.md,*.markdown,*.mdown,*.txt setlocal spell
  autocmd FileType gitcommit setlocal spell tw=68 nonumber norelativenumber
  autocmd FileType tex setlocal spell

  " Don't render line numbers in history files
  autocmd BufRead,BufNewFile *_history set nonumber nornu

  " Stuff I don't care about when writing,
  autocmd FileType gitcommit,markdown,text,tex set nornu nolist

  autocmd BufRead,BufNewFile *.bib set nornu nolist

  " Custom comment strings
  autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
  autocmd FileType typescript.jsx setlocal commentstring={/*\ %s\ */}

  " Don't want line numbers in terminal
  if has('nvim')
    autocmd TermOpen * setlocal nonumber norelativenumber
  endif

  " Where to wrap lines
  " autocmd FileType slim,haml,html,tex set wrap
  " autocmd FileType slim,haml,html,tex noremap <buffer> j gj
  " autocmd FileType slim,haml,html,tex noremap <buffer> k gk

  autocmd BufWritePost $MYVIMRC source $MYVIMRC

  " Eval Ruby https://github.com/t9md/vim-ruby-xmpfilter
  " autocmd BufRead,BufNewFile _sandbox.rb nmap <buffer> <C-k> <Plug>(xmpfilter-run)
  " autocmd BufRead,BufNewFile _sandbox.rb xmap <buffer> <C-k> <Plug>(xmpfilter-run)
  " autocmd BufRead,BufNewFile _sandbox.rb imap <buffer> <C-k> <Plug>(xmpfilter-run)
  " autocmd BufRead,BufNewFile _sandbox.rb nmap <buffer> <C-j> <Plug>(xmpfilter-mark)
  " autocmd BufRead,BufNewFile _sandbox.rb xmap <buffer> <C-j> <Plug>(xmpfilter-mark)
  " autocmd BufRead,BufNewFile _sandbox.rb imap <buffer> <C-j> <Plug>(xmpfilter-mark)
augroup END

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" Command number to jump to tab in macvim
if has("gui_macvim")
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

noremap Y y$

" Search for word under cursor with K
nnoremap K :Ack \b<C-R><C-W>\b<CR>
" Into the void
nnoremap ; :
nnoremap , ;
vnoremap ; :
vnoremap , ;

" Find buffer
noremap <leader>p :Buffers<CR>
" Find file
noremap <C-p> :Files<CR>
" Find tag in current buffer
noremap <leader>t :BTags<CR>
" Find tag in current project
noremap <leader>T :Tags<CR>
" Find lines in file
noremap <leader>/ :BLines<CR>
" Open tag in vsplit
noremap <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Substitute
noremap <leader>s :%s/
" Substitute word under cursor
noremap <leader>S :%s/<C-R><C-W>//c<Left><Left>
" Search globally
noremap <leader>a :Ack<space>
" Search with ag from previous search
" noremap <leader>A :AckFromSearch!<space>
" Search globally with git grep
noremap <leader>g :Ggrep<space>
" Blame
noremap <leader>b :Gblame<CR>
" Shell commands
noremap <leader>; :!
" Fast save
noremap <leader>w :w<CR>
" Edit vimrc
noremap <leader>ev :vs ~/.vimrc<CR>
" Fast help
noremap <leader>h :help<space>
" Help for word under cursor
noremap <leader>H :help<space><C-r><C-w>
" Colorpicker
noremap <leader>C :VCoolor<CR>
" Find
noremap <leader>f :find<space>
" Linting
noremap <leader>lt :ALEToggle<CR>
noremap <leader>lf :ALEFix<CR>
noremap <leader>lh :ALEHover<CR>
noremap <leader>lp :Prettier<CR>

" Run tests
nnoremap <silent> <leader>rn :TestNearest<CR>
nnoremap <silent> <leader>rf :TestFile<CR>
nnoremap <silent> <leader><CR> :TestFile<CR>
nnoremap <silent> <leader>ra :TestSuite<CR>
nnoremap <silent> <leader>rl :TestLast<CR>
nnoremap <silent> <leader>rv :TestVisit<CR>

" Trigger snippets with C-J
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Fast tab switching with leader + number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Better split navigation
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
      \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \gvy/<C-R><C-R>=substitute(
      \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
      \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \gvy?<C-R><C-R>=substitute(
      \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \gV:call setreg('"', old_reg, old_regtype)<CR>)])))))]))))

" if has('nvim')
"   tnoremap <Esc> <c-\><c-n>
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" endif

nnoremap <silent> <C-H> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-J> :TmuxNavigateDown<cr>
nnoremap <silent> <C-K> :TmuxNavigateUp<cr>
nnoremap <silent> <C-L> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Uppercase typed word
inoremap <C-u> <esc>viwUea

" imap <C-j> <Plug>snipMateNextOrTrigger
" imap <C-k> <Plug>snipMateBack

" Ruby single line to multi line
let @b='f(a$ikV:s/, /,j=%'

" Use rg as search backend when present
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

" Use Graal LSP
let g:LanguageClient_serverCommands = {
      \ 'javascript': ['tcp://127.0.0.1:8123'],
      \ 'javascript.jsx': ['tcp://127.0.0.1:8123'],
      \ }

" Disable ale by default
let g:ale_enabled = 0
" Enable completion where available.
let g:ale_completion_enabled = 1
" Enable hover info and show it in ballons if possible.
let b:ale_set_balloons = 1
" Show the gutter at all times.
" let g:ale_sign_column_always = 1
" Only lint on save.
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
" Don't highlight text, the marker on the left is enough.
" let g:ale_set_highlights = 0
" Linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint', 'tsserver', 'typecheck'],
\   'ruby': ['rubocop', 'ruby'],
\   'python': ['pylint', 'pyls'],
\   'rust': ['cargo', 'rls', 'rustc'],
\}
" Enable eslint autofix
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'ruby': ['rubocop', 'rufo'],
\   'python': ['yapf'],
\   'rust': ['rustfmt'],
\}

" Disable all vcoolor mappings
let g:vcoolor_disable_mappings = 1

" Paste lower case codes
let g:vcoolor_lowercase = 1

" Similar to nerdtree
let g:netrw_liststyle = 3

" Enable jsx syntax highlighting in all js files
let g:jsx_ext_required = 1

" make test commands execute using dispatch.vim
" let test#strategy = 'dispatch'
" let test#strategy = 'neovim'

" Highlight matches in ferret search
" let g:FerretHlsearch=1

" Make ferret prefer ag
" let g:FerretExecutable='ag,rg'

" Disable vim-rsi meta maps because they break umlaute
let g:rsi_no_meta = 1

let g:tmux_navigator_no_mappings = 1

" ga for easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" You can't take that away from me Pope.
nmap co yo

iab relaod reload
iab relado reload
iab udpate update
iab udpate_attribute update_attribute
iab udpate_attributes update_attributes
iab descarted descartes
iab Descarted Descartes
iab fasle false
iab flase false
iab reponse response

" Umlaute
" inoremap ae ä
" inoremap ue ü
" inoremap oe ö
" inoremap Ae ä
" inoremap Ue ü
" inoremap Oe ö

if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
