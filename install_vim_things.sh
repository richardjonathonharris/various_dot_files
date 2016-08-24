cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc

mkdir ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
    git clone https://github.com/tpope/vim-surround

cd ~/.vim/bundle && \
    git clone https://github.com/ctrlpvim/ctrlp.vim

mkdir ~/.vim/colors

cd ~/.vim/colors && \
    git clone https://github.com/tomasr/molokai

cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

tmux source-file ~/.tmux.conf
