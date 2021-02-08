" The Black formatter defines the line length as ~90 characters
" https://github.com/psf/black#line-length
" set textwidth=88
" set colorcolumn=90

function! SortImports()
  silent !clear
  " execute "!isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses --line-width=88 %"
  execute "!isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses %"
endfunction

function! Format()
  silent !clear
  execute "!isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses %"
  execute "!black %"
endfunction

:nnoremap <buffer> <silent> <leader>f :call Format()<cr>
:nnoremap <buffer> <silent> <leader>i :call SortImports()<cr>

