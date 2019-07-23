ln -s `pwd`/.vimrc ~/
ln -s `pwd`/.ideavimrc ~/
ln -s `pwd`/.common_keybind.vim ~/
ln -s `pwd`/.tmux.conf ~/
ln -s `pwd`/.windows_bashrc ~/.bashrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'Finished. Run vim, then type :PlugInstall'
