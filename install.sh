if [ ! -d ~/.config/nvim/autoload ]; then
    mkdir -p ~/.config/nvim/autoload
fi

if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

cp -f init.vim ~/.config/nvim/init.vim

echo "Now enter NeoVim and run :PlugUpgrade :PlugInstall! :PlugUpdate! to complete install"

