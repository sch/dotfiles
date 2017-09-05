" Vim color file
" Maintainer:	Adrian Schaedle <adrian@schaedle.me>
" Last Change:	2015 Dec 23

" This colorscheme's goal is to take the colors defined in your terminal
" emulator and map vim's tokens to the most pleasing colors. It should never
" directly map named colors --- only ANSI identifiers. A north star for this
" project are the colors in Pygmentize.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "terminal"

hi Comment ctermfg=10

hi Constant ctermfg=Blue
hi String ctermfg=Green
hi Character ctermfg=Yellow
" hi Number ctermfg=Blue

hi Statement ctermfg=15

hi Error ctermfg=Yellow ctermbg=Red

" vim: sw=2
