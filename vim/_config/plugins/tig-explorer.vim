if empty(globpath(&rtp, 'autoload/tig_explorer.vim'))
  finish
endif

" tig status
nnoremap <Leader>s :TigStatus<CR>
" open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>
" open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>
" open tig grep
" nnoremap <Leader>g :TigGrep<CR>
" resume from last grep
" nnoremap <Leader>r :TigGrepResume<CR>
" open tig grep with the selected word
" vnoremap <Leader>gg y:TigGrep<Space><C-R>"<CR>
" open tig grep with the word under the cursor
" nnoremap <Leader>cg :<C-u>:TigGrep<Space><C-R><C-W><CR>
" open tig blame with current file
nnoremap <Leader>B :TigBlame<CR>
" nnoremap <Leader>gb :TigBlame<CR>

" unbind bclose keymap
let g:bclose_no_plugin_maps = 1
