" vim:set ts=2 sts=2 sw=2 expandtab:

set nocompatible " Must come first because it changes other options.
filetype off     " required!

if has('nvim')
  call plug#begin('~/.local/share/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'flowtype/vim-flow'
" Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " vim-polyglot gives us syntax, but none of the sugar
Plug 'Lokaltog/vim-easymotion'
Plug 'andrep/vimacs'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-vinegar'

" Resize unfocused windows when everything can't fit on a single screen
Plug 'roman/golden-ratio'

" The styled-components allows you to write component styles as css in template
" strings. This plugin applies syntax highlighting for those strings.
Plug 'styled-components/vim-styled-components'

" Lift some commmon Unix commands into vim-land. This includes things like:
" Delete, Rename, Chmod, Move, etc
Plug 'tpope/vim-eunuch'

" Persist vim sessions (open up previous windows, folds, etc)
Plug 'tpope/vim-obsession'

" Use 'conceal mode' to display files with ansi colored text. Usefult for
" plugins that output colored text and assume a terminal context.
Plug 'powerman/vim-plugin-AnsiEsc'

" Supplies syntax highlighting and indentation for Elixir
Plug 'elixir-lang/vim-elixir'

" Autocomplete (<C-x><C-o>) and documentation (K) in Elixir code
" ctag-like functionality as well with <C-]>, :Mix command for running tasks
" Has a python dependency on alchemist_client
Plug 'slashmili/alchemist.vim'

" Community-contributed snippets for various language idioms
Plug 'honza/vim-snippets'

" Syntax highlighting, completion, and build tools for elm
" This project stopped being maintained for 0.19:
" Plug 'ElmCast/elm-vim'
" This fork seems to be keeping up well:
" Plug 'Zaptic/elm-vim'
" But let's instead just use syntax highlighting and use the language server
" for everything else:
Plug 'andys8/vim-elm-syntax'

" Seamlessly navigate between tmux panes and vim panes:
Plug 'christoomey/vim-tmux-navigator'

" title-case text with 'gt'
Plug 'christoomey/vim-titlecase'

Plug 'guns/vim-sexp'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'justinmk/vim-dirvish'

" Standardized test running interface
Plug 'janko-m/vim-test'

Plug 'davidhalter/jedi-vim'

" Auto-format python code
Plug 'ambv/black'

Plug 'tpope/vim-fireplace'

" Syntax highlighting for some of postgres' more esoteric features
Plug 'lifepillar/pgsql.vim'

" Syntax support for the crystal language
Plug 'rhysd/vim-crystal'

" vimproc uses an external DLL file to allow for async execution of jobs from
" within vim. This is mostly needed for tsuquyomi
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" This one lets your build colorschemes out of high-level specs
Plug 'lifepillar/vim-colortemplate'

" Parinfer in pure vim script
Plug 'bhurlow/vim-parinfer'

Plug 'xolox/vim-misc'
" Plug 'majutsushi/tagbar'

" Gutentags intelligently rebuilds tags in the background. Notable because
" it's cross-platform, is pure vimscript, and performs incremental generation.
" Plug 'ludovicchabant/vim-gutentags'

" Ale is an autocompletion framework designed for neovim/vim8 that doesn't
" really have any configuration. It replaces syntastic, so we can leave that
" around if ale doesn't prove successful.
" Plug 'dense-analysis/ale'

" Pure-vim language server client
Plug 'natebosch/vim-lsc'

" Typescript plugin that handles syntax
Plug 'leafgarland/typescript-vim'

" Color z80/gameboy asm correctly
Plug 'samsaga2/vim-z80'

" this plugin auto-completes JSON documents based on info from schemastore.org
Plug 'Quramy/vison'

Plug 'airblade/vim-rooter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'c9s/bufexplorer'
" Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'jpalardy/vim-slime'
Plug 'sjl/gundo.vim'
Plug 'thoughtbot/vim-rspec'

Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'

" Common navigational mappings
Plug 'tpope/vim-unimpaired'
"
" Easy git
Plug 'tpope/vim-fugitive'

" Easy github
Plug 'tpope/vim-rhubarb'

" Pop open bitbucket links when using Fugitive's GBrowse command
Plug 'tommcdo/vim-fubitive'

" Jump around in the style of rails vim, but with any file.
Plug 'tpope/vim-projectionist'

Plug 'tpope/vim-liquid'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'

" Run Rake commands
Plug 'tpope/vim-rake'

" Plug 'vim-scripts/paredit.vim'
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

" Deprecated silver searcher (grep) plugin
" Plug 'rking/ag.vim'

Plug 'mtth/scratch.vim'

" Add fzf fuzzy finder to runtime path
Plug '/usr/local/opt/fzf'

" Fuzzy matching presets
Plug 'junegunn/fzf.vim'

" Themes
Plug 'junegunn/goyo.vim'
Plug 'alessandroyorba/despacio', { 'commit': '75f094caa8c561d17544c416689fdd8afda8d026' }
Plug 'nightsense/shoji'
Plug 'albertorestifo/github.vim'
Plug 'nightsense/vrunchbang'
Plug 'reedes/vim-colors-pencil'

" Vim themes by default define hex codes to provide color vlaues. This plugin
" is a vanilla vim theme that allows your terminal's 16-color scheme to define
" those colors.
Plug 'noahfrederick/vim-noctu'

" Similar to Noctu, this theme extends the default vim colorscheme with more
" muted colors to allow re-use of terminal-defined colors
Plug 'jeffkreeftmeijer/vim-dim'

Plug 'vim-scripts/256-grayvim'

" We run vim-polyglot, a meta-package that provides a-la-carte syntax
" highlighting for many more languages than Vim has built-in
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on         " Turn on file type detection.
" filetype plugin on                " ... but don't use indentation settings set by plugins
set encoding=utf-8                " Duh
syntax on                         " Turn on syntax highlighting.

runtime macros/matchit.vim        " Load the matchit plugin (built-in).

" set shell='/bin/sh'

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set mouse=a

set autowrite                     " Save before commands
au FocusLost * silent! wa         " Textmate-style save when focus is lost
set autowriteall                  " Save when switching buffers

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest,full    " Complete files like a shell.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/_site/*,*/_build/*
set wildignore+=*.png,*.jpg

" tab-complete files without worrying about uppercase or lowercase letters
set wildignorecase

" use regex in search
nnoremap / /\v
vnoremap / /\v
set gdefault                      " set global substitution to searches
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" set grepprg=ack\ -a

" use 'K' to search for the word under the cursor
" nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

set number                        " Show line numbers.
if v:version >= 704
  set relativenumber              " Also show relative line numbers
endif
set ruler                         " Show cursor position.
set nowrap                          " Turn on line wrapping.
set linebreak                     " Don't split words when wrapping
set textwidth=79                  " Autobreak after 79 char/
set formatoptions=qrn1
set colorcolumn=85
set scrolloff=5                   " Show 5 lines of context around the cursor.
set ttyfast                       " Faster key commands in terminal Vim.
set lazyredraw

set title                         " Set the terminal's title
set laststatus=2                  " Show the status line all the time

" Open new split panes more naturally.
set splitbelow
set splitright

" This changes the character used for separating panels from one another.
" The default | character is not tall enough to make a continuous line for
" a terminal font line height of 1, so we use a unicode character to extend the
" whole way.
" set fillchars+=vert:│

" Just turn off the panel separator altogether.
set fillchars=""

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set t_Co=256

" termguicolors should only be set while in tmux
"
" https://github.com/vim/vim/issues/3500
"
if has("termguicolors") && exists("$TMUX")
  set termguicolors
endif


set background=light
" let g:despacio_Midnight = 1
colorscheme github


set visualbell t_vb=              " No beeping

set list
set listchars=tab:▸\ ,eol:¬

" set nowritebackup                 " And again.
set noswapfile                    " fuck swapfiles, i think
set switchbuf=useopen             " don't reopen already opened buffers

set backup                        " backups are nice ...
set backupdir-=.
set backupdir^=~/tmp,/tmp

if has('persistent_undo')
  set undofile                    " so is persistent undo ...
  set undodir=~/.vim/undo         " directory for these files
  set undolevels=1000             " maximum number of changes that can be undone
  set undoreload=10000            " maximum number lines to save for undo on a buffer reload
endif

set autoindent                    " Sane indentation after carriage return
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
" set shiftround                    " Use multiples of shiftwidth when using > and <
set expandtab                     " Use spaces instead of tabs
set showmatch                     " set show matching parenthesis
set smarttab                      " insert tabs on the start of a line according to
                                  " shiftwidth, not tabstop
set clipboard+=unnamedplus        " Access clipboard universally

" Scroll the opposite window
nmap <a-y> <c-w>w<c-y><c-w>w
nmap <a-e> <c-w>w<c-e><c-w>w

" recursively check the directory tree for ctags
" set tags=tags;/

" `autocmd` provides hooks to occur when reading or writing a file based on
" things like filetype, buffer actions, vim startup, etc
if has('autocmd')

  filetype on

  autocmd FileType asm    setlocal ts=4 sts=0 sw=0 noexpandtab
  autocmd FileType html   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType pml    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType yaml   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vim    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType elm    setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType groovy setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType Jenkinsfile setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType go     setlocal tabstop=4

  " autocmd FileType ruby :Abolish -buffer initialise initialize

  " Check extension of a new file, insert the appropriate template
  autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

  " If it quacks like Ruby, treat it like Ruby
  autocmd BufNewFile,BufRead Rakefile  setfiletype ruby
  autocmd BufNewFile,BufRead Capfile   setfiletype ruby
  autocmd BufNewFile,BufRead Gemfile   setfiletype ruby
  autocmd BufNewFile,BufRead Termfile  setfiletype ruby
  autocmd BufNewFile,BufRead config.ru setfiletype ruby

  autocmd BufNewFile,BufRead md setlocal textwidth=80

  " Open the help window in a side split rather than a vertical one
  autocmd FileType help wincmd L

  " Reload vim when the vimrc is saved
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","                "easier leader

" be unforgiving about using arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>

" Bind L to end-of-line
noremap L $

" emacs style ctrl e/a for beginning/end of line
imap <C-e> <C-o>A
imap <C-a> <C-o>I

" Make j and k work on wrapped lines
nnoremap j gj
nnoremap k gk

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" tab -> nearest enclosure
" nmap <tab> %
" vmap <tab> %

" Clear highlighted search
" nmap <silent> <leader>/ :nohlsearch<CR>

" markdown-style row of === under current line
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

" Some helpers to edit mode (thanks to http://vimcasts.org/e/14)
" %% gets expanded into the head path of the current file
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
" Expanding %% while editing /path/to/foo.txt will drop you into a file browser
" pointing to /path/to/, regardless of the cwd of the current session
map <leader>e :e %%
map <leader>es :sp %%

nnoremap <leader>u :GundoToggle<cr>
" Haskell compiler
" au BufEnter *.hs compiler ghc


" Deoplete setup
" https://github.com/Shougo/deoplete.nvim
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#keyword_patterns = {}
  let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'
  " let g:deoplete#disable_auto_complete = 1
endif

" Tern setup. Tern usage relies on the tern_for_vim package, which provides
" a couple useful commands for navigating around a javascript project. There's
" no good way of generating ctags for js
let g:tern_request_timeout = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump=1 " Let Syntastic jump to bad lines on save
let g:syntastic_javascript_checkers = ['eslint']

" Format crystal files on save
let g:crystal_auto_format=1

" Vim language server configuration

" let g:lsc_auto_map = v:true

let g:lsc_server_commands = {}
let g:lsc_server_commands.python = 'pyls'
let g:lsc_server_commands.typescript = 'typescript-language-server --stdio'
let g:lsc_server_commands.typescriptreact = 'typescript-language-server --stdio'

" Set up vim-lsc to use the default keybindings
"
" - GoToDefinition        <C-]>
" - GoToDefinitionSplit   <C-W><C-]>
" - FindReferences        gr
" - NextReference         <C-n>
" - PreviousReference     <C-p>
" - FindImplementations   gI
" - FindCodeActions       ga
" - Rename                gR
" - DocumentSymbol        go
" - WorkspaceSymbol       gS
" - SignatureHelp         gm
" - Completion            completefunc
"
let g:lsc_auto_map = {}
let g:lsc_auto_map.defaults = v:true
let g:lsc_auto_map.PreviousReference = '' " Disable default (ctrl-p) for fuzzy finding

nmap <silent> <leader>h :LSClientLineDiagnostics<CR>

highlight Cursor guifg=white

" Linting
" with the ale library
let g:ale_linters = { 'elm': ['elm_ls'] }
let g:ale_sign_error = '->'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 0
" let g:ale_completion_enabled = 1
" let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}

command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"



highlight clear ALEErrorSign
highlight clear ALEWarningSign
" nmap <silent> <leader>k <Plug>(ale_previous_wrap)
" nmap <silent> <leader>j <Plug>(ale_next_wrap)
" nmap <silent> <leader>h <Plug>(ale_detail)



" Some setup for coc.vim --- there aren't any defualt values in that project
" nmap <silent> <leader>k <Plug>(coc-diagnostic-prev)
" nmap <silent> <leader>j <Plug>(coc-diagnostic-next)
" nmap <silent> <leader>h <Plug>(coc-diagnostic-info)
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Disable tsuquyomi's quickfix window in favor of ale's
let g:tsuquyomi_disable_quickfix = 1

" bind
autocmd FileType typescript nmap <buffer> <leader>m : <C-u>echo tsuquyomi#hint()<CR>

" There's an annoying message that pops up all the time using Rubocop affecting
" code like the following in ERB files:
"
" <% flash.each do |key, value| %>
"   <div class="flash <%= key %>"><%= value %></div>
" <% end %>
"
" It's fine to ouptut nil in the case that nothing is available to render. This
" setting change turns off the checker for this issue:
let g:syntastic_eruby_ruby_quiet_messages =
      \ {'regex': 'possibly useless use of a variable in void context'}


" Follow a tag, but open it in a vertical split with <alt-]>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Give airline some reasonable defaults
let g:airline_left_sep= 'â'
let g:airline_right_sep= 'â'

" In order for Alchemist.vim to find Elixir source files for the
" jump-to-definition feature, we need to point it to a directory with the
" Elixir and Erlang source code. Homebrew only downloads the complied BEAM
" files.
let g:alchemist#elixir_erlang_src = '/Users/adrianschaedle/github/elixir-lang'


" Neovim stuff
" let g:python_host_prog = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'


" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

" Find all files in all non-dot directories starting in the working directory.
" Fuzzy select one of those. Open the selected file with :e.
nnoremap <leader>f :call SelectaCommand("find * -type f", "", ":e")<cr>

" Rename lines without all the fuss
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

" Run tests using vim-test
nmap <silent> <leader>t :TestNearest<cr>
nmap <silent> <leader>T :TestFile<cr>
nmap <silent> <leader>a :TestSuite<cr>
nmap <silent> <leader>l :TestLast<cr>
nmap <silent> <leader>g :TestVisit<cr>


" Run a given vim command on the results of alt from a given path.
" See usage below.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>


" Javascript
let g:javascript_conceal = 1
let g:javascript_plugin_jsdoc = 1

" View the current project's readme
" command Readme execute '!nd README.md'

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Jump quickly between open files with <return>
nnoremap <space> :BufExplorer<cr>

" open up Marked
" nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Quick editing of .vimrc and of snippets
nnoremap <leader>ev :e $MYVIMRC<cr>

" make a vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Remove highlighted searches with delete
nnoremap <BS> :nohlsearch<CR>

" Set ctrlP's position to the top
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
" set ctrlP's working directory to a git root
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\v[\/](release|node_modules|bower_components|bower|development|build|vendor\/gems|vendor\/bundle|deps|priv|elm-stuff|dist|module)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Make FZF match the colors for Github colorscheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg+':     ['bg', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Special'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Constant'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Show files with preview while searching
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Configuration for elm-mode
let g:elm_format_autosave = 1


" Limelight can't always infer from a theme what color to make darkened text
let g:limelight_conceal_ctermfg = 'darkgray'

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux-next resize-pane -Z
  set listchars=
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux-next resize-pane -Z
  set listchars=tab:▸\ ,eol:¬
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" =============================================================================
" The treasure trove that are these configs mostly came from:
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" https://github.com/gmarik/vimfiles/blob/master/vimrc
" https://github.com/durdn/cfg/blob/master/.vimrc
" https://github.com/factorylabs/vimfiles
" https://github.com/oryband/dotvim/blob/master/vimrc
" http://parley.rubyrogues.com/t/your-favourite-vimrc-tips/702/38
"
" nnoremap should be used whenever possible, because most mappings shouldn't be
" recursive
