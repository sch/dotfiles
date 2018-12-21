" This file remaps `ctrl-]` to the `TernDef` command. This allows for all that
" good tag-related muscle-memory but none of the pain of trying to generate
" a tag file from vim.

:map <buffer> <C-]> :TernDef<cr>

let b:ale_fixers = ['prettier']
