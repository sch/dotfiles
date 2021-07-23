let b:ale_fixers = ['prettier']

function! Format()
  silent !clear
  execute "!prettier --write %"
endfunction

:nnoremap <buffer> <silent> <leader>f :call Format()<cr>
