# Give parameter -s for silent
if [ $1 = "s" ]; then
    silent="--headless"
else
    silent=""
fi

if [ ! -d ~/.config/nvim/autoload ]; then
    echo "Making nvim autoload directory"
    mkdir -p ~/.config/nvim/autoload
fi

echo "Replacing nvim config"
cp -f init.vim ~/.config/nvim/init.vim

if [ ! -f ~/.config/nvim/autoload/plug.vim ]; then
    echo "vim-plug not found...installing"
    curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "vim-plug found, upgrading if new version available"
    nvim $silent -c ":PlugUpgrade | q | :PlugClean! | q | :q!"
    # Newline to make readable
    echo
fi


echo "Installing new plugins and Updating existing plugins"
nvim $silent -c ":PlugInstall | q | :PlugUpdate | q | :q!"

echo "nvim configuration complete"
