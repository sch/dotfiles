function! SortImports()
  silent !clear
  execute "!isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses --line-width=88 %"
endfunction

:nnoremap <buffer> <silent> <leader>f :call SortImports()<cr>

