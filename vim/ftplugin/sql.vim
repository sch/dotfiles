function! FormatSql()
  silent !clear
  execute "!cat % | cockroach sqlfmt --use-spaces --tab-width 2 --print-width 80 >> %"
endfunction

:nnoremap <buffer> <silent> <leader>f :call FormatSql()<cr>

