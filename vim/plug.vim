" plugins
filetype plugin indent on
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

"""
" utility
"""
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" filer
Plug 'cocopon/vaffle.vim'
" sandwich
Plug 'machakann/vim-sandwich'
" auto close
Plug 'mattn/vim-lexiv'
" jump
Plug 'easymotion/vim-easymotion'
" comment out
Plug 'tyru/caw.vim'
" replace
Plug 'markonm/traces.vim'

"""
" view
"""
" color scheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" statusline
Plug 'itchyny/lightline.vim'

"""
" git
"""
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"""
" languages
"""
" go
Plug 'sebdah/vim-delve'
Plug 'mattn/vim-goimports'
" slim
Plug 'slim-template/vim-slim'
" coffee
Plug 'kchmck/vim-coffee-script'
" js
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" ts
Plug 'leafgarland/typescript-vim'

"""
" lsp
"""
if (has('nvim'))
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/diagnostic-nvim'
else
  " vim-lsp
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
endif
call plug#end()


if (has('nvim'))
  " TODO
  " Use <Tab> and <S-Tab> to navigate through popup menu
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  " autocmd BufEnter * lua require'completion'.on_attach()
  set completeopt=menuone,noinsert,noselect
  set shortmess+=c
  
  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> td   <cmd>lua vim.lsp.buf.type_definition()<CR>
  nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
  nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

lua <<EOF
local on_attach_vim = function(client)
  require'completion'.on_attach(clietn)
  require'diagnostic'.on_attach(clietn)
end

require'nvim_lsp'.gopls.setup{on_attach=on_attach_vim}
require'nvim_lsp'.solargraph.setup{on_attach=on_attach_vim}
require'nvim_lsp'.tsserver.setup{on_attach=on_attach_vim}
EOF

  let g:diagnostic_enable_virtual_text = 1
endif
