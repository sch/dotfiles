" Enable spellchecking
setlocal spell

" Automatically wrap at 80 characters
setlocal textwidth=80

setlocal wrap
setlocal linebreak

" Sometimes it's nice to open a markdown file up as a compiled document. This
" script opens the current markdown document using the VMD tool.

if !exists("g:markdown_previewer")
  let g:markdown_previewer = "vmd"
endif

function! OpenMarkdownPreview()
  silent !clear
  execute "!" . g:markdown_previewer . " " . bufname("%")
endfunction

nnoremap <leader>p :call OpenMarkdownPreview()<cr>
