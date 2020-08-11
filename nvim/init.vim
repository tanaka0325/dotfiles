let s:base_dir = expand('~/dotfiles/vim')
execute 'set runtimepath+=' . fnamemodify(s:base_dir, ':p')

runtime! vimrc
