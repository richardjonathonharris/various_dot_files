cp .vimrc ~/.vimrc

mkdir ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
    git clone https://github.com/tpope/vim-surround

cd ~/.vim/bundle && \
    git clone https://github.com/ctrlpvim/ctrlp.vim

cd ~/.vim/bundle && \
    git clone https://github.com/plasticboy/vim-markdown.git

cd ~/.vim/bundle && \
    git clone https://github.com/Yggdroot/indentLine.git

cd ~/.vim/bundle && \
    git clone https://github.com/rstacruz/vim-closer.git

cd ~/.vim/bundle && \
    git clone https://github.com/hail2u/vim-css3-syntax.git

cd ~/.vim/bundle && \
    git clone https://github.com/pangloss/vim-javascript.git

cd ~/.vim/bundle && \
    git clone https://github.com/mxw/vim-jsx.git

mkdir ~/.vim/colors

cd ~/.vim/colors && \
    git clone https://github.com/tomasr/molokai

cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

