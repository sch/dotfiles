" vim:set ts=2 sts=2 sw=2 expandtab:

set nocompatible " Must come first because it changes other options.
filetype off     " required!

call plug#begin('~/.vim/plugged')

" Syntax highlighting for many languages
" Does not handle extras that come from these packages
Plug 'sheerun/vim-polyglot'

" <snipmate>
" Plug 'garbas/vim-snipmate'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'vim-scripts/tlib'
" Plug 'honza/snipmate-snippets'
" </snipmate>

" Plug 'aliva/vim-fish'
" Plug 'digitaltoad/vim-jade'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'elixir-lang/vim-elixir'
" Plug 'elmcast/elm-vim'
" Plug 'groenewege/vim-less'
" Plug 'juvenn/mustache.vim'
" Plug 'lunaru/vim-twig'
" Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'flowtype/vim-flow'
" Plug 'plasticboy/vim-markdown'
" Plug 'rodjek/vim-puppet'
" Plug 'stephpy/vim-yaml'
" Plug 'wavded/vim-stylus'
" Plug 'wting/rust.vim'
" Plug 'cwood/vim-django'
" Plug 'digitaltoad/vim-jade'
" Plug 'frerich/unicode-haskell'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " vim-polyglot gives us syntax, but none of the sugar
" Plug 'spf13/PIV'
" Plug 'tpope/vim-markdown'
" Plug 'reedes/vim-pencil'
" Plug 'vim-scripts/VimClojure'
" Plug 'wlangstroth/vim-haskell'
" Plug 'wookiehangover/jshint.vim'

" <navigation>
Plug 'Lokaltog/vim-easymotion'
Plug 'andrep/vimacs'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-vinegar'
" Plugin 'scrooloose/nerdtree'
"Fixes
Plug 'guns/vim-sexp'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kien/ctrlp.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'justinmk/vim-dirvish'
Plug 'danro/rename.vim'
" </navigation>

" <completion>
Plug 'davidhalter/jedi-vim'
Plug 'marijnh/tern_for_vim'
" Plug 'Valloric/YouCompleteMe'
" </completion>

" <repls>
Plug 'tpope/vim-fireplace'
" </repls>

" <neovim>
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'neovim/node-host'
Plug 'snoe/nvim-parinfer.js'
Plug 'clojure-vim/async-clj-omni'
" </neovim>

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
" Plug 'pbrisbin/html-template-syntax'
Plug 'scrooloose/syntastic'
" Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-rooter'
Plug 'bclear'
Plug 'bronson/vim-trailing-whitespace'
Plug 'c9s/bufexplorer'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'jpalardy/vim-slime'
Plug 'sjl/gundo.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
" Plug 'vim-scripts/paredit.vim'
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'mtth/scratch.vim'

" keeping up appearances
" Plug 'godlygeek/csapprox'
Plug 'junegunn/goyo.vim'
Plug 'alessandroyorba/despacio'
Plug 'junegunn/limelight.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'mvader/vim-firewatch'
Plug 'clinstid/eink.vim'

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

" use regex in search
nnoremap / /\v
vnoremap / /\v
set gdefault                      " set global substitution to searches
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" set grepprg=ack\ -a

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

set title                         " Set the terminal's title
set laststatus=2                  " Show the status line all the time

set splitbelow
set splitright

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set background=dark
let g:despacio_Campfire = 0
let g:despacio_Twilight = 1
let g:despacio_Midnight = 0
colorscheme despacio

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
set undodir=~/.vim/undo          " directory for these files
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


" <window sizing>
set winwidth=82
set winminwidth=30
" set winheight=5
" set winminheight=5
" set winheight=9999
" </window sizing>
"
" recursively check the directory tree for ctags
set tags=tags;/

" `autocmd` provides hooks to occur when reading or writing a file based on
" things like filetype, buffer actions, vim startup, etc
if has('autocmd')

  filetype on

  autocmd FileType asm    setlocal ts=4 sts=0 sw=0 noexpandtab

  " The Rubyish family of languges that prefer 2-space indentation
  autocmd FileType html   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType pml    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType yaml   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vim    setlocal ts=2 sts=2 sw=2 expandtab

  " Things that I'd prefer to be 4 spaces
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
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
" Speed up buffer switching
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l

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
nmap <tab> %
vmap <tab> %

" Clear highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

" markdown-style row of === under current line
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :e %%
map <leader>es :sp %%

nnoremap <leader>u :GundoToggle<cr>
" Haskell compiler
" au BufEnter *.hs compiler ghc


" Deoplete setup
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

" Tern setup. Tern usage relies on the tern_for_vim package, which provides
" a couple useful commands for navigating around a javascript project. There's
" no good way of generating tags from a 
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


" Ctags related configuration. Easytags is the tool that auomatically
" regenerates ctag files on save. Normally it runs in a syncronous mode, so we
" turn that off. Rather than having a project-specific tags file, it instead
" stuffs all the tags into a file ~/.vimtags. If there is a local tags file in
" the project however, that will be considered in tag lookup.
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_supress_ctags_warning = 1


" Neovim stuff
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


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

""""""""""""""""""""
" POWERLINE SETTINGS
""""""""""""""""""""
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_theme = 'skwp'
" let g:Powerline_colorscheme = 'skwp'

"""""" END POWERLINE
""""""""""""""""""""
" <airline>
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
" </airline>
"
" <ruby> ------------------------------------------------------------------------
let g:rspec_command = "!bundle exec rspec "
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" </ruby>

" <javascript> ------------------------------------------------------------------------
let g:javascript_conceal = 1
let g:javascript_plugin_jsdoc = 1
" </javascript>

" <python> ------------------------------------------------------------------------
let g:jedi#use_tabs_not_buffers = 0
" </python>

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

" nerd tree shortcut
" nnoremap <leader>. :NERDTreeToggle<cr>
" let NERDTreeIgnore=['\.pyc$','development$', 'node_modules$', 'release$', '\.vim$', '\~$']

" bufexplorer shortcut
nnoremap <return> :BufExplorer<cr>

" open up Marked
" nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Quick editing of .vimrc and of snippets
nnoremap <leader>ev :e $MYVIMRC<cr>

" make a vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Remove highlighted searches with delete
nnoremap <BS> :nohlsearch<CR>

" Escape normal mode quicker
inoremap kj <ESC>

" Save and escape
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Set ctrlP's position to the top
:let g:ctrlp_match_window_bottom = 0
" :let g:ctrlp_match_window_reversed = 0
" set ctrlP's working directory to a git root
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\v[\/](release|node_modules|bower_components|bower|development|build)$'


" Configuration for elm-mode
let g:elm_format_autosave = 1

" Controversial...swap colon and semicolon for easier commands
nnoremap ; :
vnoremap ; :
" nb: don't remap ; because it breaks plugins

function! s:goyo_enter()
  silent !tmux-next set status off
  silent !tmux-next list-panes -F '\#F' | grep -q Z || tmux-next resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux-next set status on
  silent !tmux-next list-panes -F '\#F' | grep -q Z && tmux-next resize-pane -Z
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
