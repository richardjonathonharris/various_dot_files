cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile

mkdir ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
    git clone https://github.com/tpope/vim-surround

cd ~/.vim/bundle && \
    git clone https://github.com/ctrlpvim/ctrlp.vim

cd ~/.vim/bundle && \
    git clone https://github.com/plasticboy/vim-markdown.git

mkdir ~/.vim/colors

cd ~/.vim/colors && \
    git clone https://github.com/tomasr/molokai

cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

mkdir ~/.bash

cd ~/.bash && \
    git clone git://github.com/jimeh/git-aware-prompt

tmux source-file ~/.tmux.conf
source ~/.bashrc
