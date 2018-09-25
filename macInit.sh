brew install the_silver_searcher
brew install ctags 
brew install cmake 
brew install tmux 
brew install docker-compose 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/src/.oh-my-zsh
git clone git://github.com/zsh-users/zsh-autosuggestions ~/src/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/tmux-plugins/tmux-resurrect ~/src/tmux-resurrect
cd ~/.vim/bundle/YouCompleteMe
git clean -f
git pull
git submodule update --recursive --init
./install.sh --clang-completer --go-completer
cd ~/src/personal_tool_conf
ln -s $PWD/colors ~/.vim/colors
ln -s $PWD/UltiSnips ~/.vim/UltiSnips
ln -s $PWD/.vimrc-mac ~/.vimrc
ln -s $PWD/.zshrc-mac ~/.zshrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
git clone https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf && install --all
rm ~/.fzf/shell/key-bindings.zsh
cd ~/src/personal_tool_conf
ln -s $PWD/key-bindings.zsh ~/.fzf/shell/key-bindings.zsh
