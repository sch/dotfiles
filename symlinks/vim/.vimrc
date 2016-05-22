" vim:set ts=2 sts=2 sw=2 expandtab:

set nocompatible " Must come first because it changes other options.
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins ------------------------------------------------------------
" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" <snipmate>
" Plugin 'garbas/vim-snipmate'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'vim-scripts/tlib'
" Plugin 'honza/snipmate-snippets'
" </snipmate>

" <syntaxes>
Plugin 'aliva/vim-fish'
Plugin 'digitaltoad/vim-jade'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'elmcast/elm-vim'
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'
Plugin 'juvenn/mustache.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'lunaru/vim-twig'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'rodjek/vim-puppet'
Plugin 'stephpy/vim-yaml'
Plugin 'wavded/vim-stylus'
Plugin 'wting/rust.vim'
" Plugin 'cwood/vim-django'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'frerich/unicode-haskell'
" Plugin 'jnwhiteh/vim-golang'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'spf13/PIV'
" Plugin 'tpope/vim-markdown'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'wlangstroth/vim-haskell'
" Plugin 'wookiehangover/jshint.vim'
" </syntaxes>

" <navigation>
Plugin 'Lokaltog/vim-easymotion'
Plugin 'andrep/vimacs'
" Plugin 'scrooloose/nerdtree'
"Fixes
Plugin 'guns/vim-sexp'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'kien/ctrlp.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'justinmk/vim-dirvish'
" </navigation>

" <completion>
Plugin 'davidhalter/jedi-vim'
Plugin 'marijnh/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'
" </completion>

" <repls>
Plugin 'tpope/vim-fireplace'
" </repls>

" Plugin 'airblade/vim-gitgutter'
" Plugin 'ludovicPelle/vim-xdebug'
Plugin 'majutsushi/tagbar'
" Plugin 'pbrisbin/html-template-syntax'
Plugin 'scrooloose/syntastic'
" Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-rooter'
Plugin 'bclear'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'c9s/bufexplorer'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'jpalardy/vim-slime'
Plugin 'sjl/gundo.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
" Plugin 'vim-scripts/paredit.vim'
" Plugin 'bling/vim-airline'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'rking/ag.vim'
Plugin 'mtth/scratch.vim'

" Plugin 'godlygeek/csapprox'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

call vundle#end()

filetype plugin indent on         " Turn on file type detection.
" filetype plugin on                " ... but don't use indentation settings set by plugins
set encoding=utf-8                " Duh
syntax on                         " Turn on syntax highlighting.

runtime macros/matchit.vim        " Load the matchit plugin (built-in).

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
" set colorcolumn=85
set scrolloff=5                   " Show 5 lines of context around the cursor.
set ttyfast                       " Faster key commands in terminal Vim.

set title                         " Set the terminal's title
set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump=1 " Let Syntastic jump to bad lines on save
let g:syntastic_javascript_checkers = ["eslint"]


" set the colorscheme
colorscheme terminal
set background=dark
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
set clipboard+=unnamed            " Make yanking possible across windows


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

  autocmd FileType asm setlocal ts=4 sts=0 sw=0 noexpandtab

  " The Rubyish family of languges that prefer 2-space indentation
  autocmd FileType html   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType pml    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType yaml   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vim    setlocal ts=2 sts=2 sw=2 expandtab

  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  " autocmd FileType ruby :Abolish -buffer initialise initialize

  " Check extension of a new file, insert the appropriate template
  autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

  " Automatic fold settings for specific files. Uncomment to use.
  autocmd FileType ruby setlocal foldmethod=syntax
  autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

  " If it looks like Ruby, treat it like Ruby
  autocmd BufNewFile,BufRead Rakefile  setfiletype ruby
  autocmd BufNewFile,BufRead Capfile   setfiletype ruby
  autocmd BufNewFile,BufRead Gemfile   setfiletype ruby
  autocmd BufNewFile,BufRead Termfile  setfiletype ruby
  autocmd BufNewFile,BufRead config.ru setfiletype ruby

  " Reload vim when the vimrc is saved
  autocmd bufwritepost .vimrc source $MYVIMRC

endif

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

let mapleader = ","                "easier leader
" Speed up buffer switching
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l
" training wheels
" inoremap  <Up>     <NOP>
" inoremap  <Down>   <NOP>
" inoremap  <Left>   <NOP>
" inoremap  <Right>  <NOP>

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
map <leader>e1 :e %%
map <leader>e2 :sp %%
map <leader>e3 :vsp %%

nnoremap <leader>u :GundoToggle<cr>
" Haskell compiler
" au BufEnter *.hs compiler ghc

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
" nnoremap <leader>es <C-w>s<C-w>j<C-w>L:e ~/.vim/bundle/snipmate-garbas/snippets<cr>

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

" Controversial...swap colon and semicolon for easier commands
nnoremap ; :
vnoremap ; :
" nb: don't remap ; because it breaks plugins

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
