" for :checkhealth
let g:python_host_prog = $HOME.'/.config/nvim/py2/.venv/bin/python'
let g:python3_host_prog = $HOME.'/.config/nvim/py3/.venv/bin/python'
let g:ruby_host_prog = $HOME.'/.rbenv/versions/2.7.1/bin/neovim-ruby-host'
let g:node_host_prog = $HOME.'/.nodenv/versions/14.8.0/bin/neovim-node-host'

let s:base_dir = expand('~/dotfiles/vim')
execute 'set runtimepath+=' . fnamemodify(s:base_dir, ':p')

runtime! vimrc

set termguicolors
