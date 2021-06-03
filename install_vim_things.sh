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

cd ~/.vim/bundle && \
    git clone https://github.com/FelikZ/ctrlp-py-matcher

cd ~/.vim/bundle && \
    git clone https://github.com/Shougo/deoplete.nvim

cd ~/.vim/bundle && \
    git clone https://github.com/preservim/nerdtree

cd ~/.vim/bundle && \
    git clone https://github.com/Xuyuanp/nerdtree-git-plugin

cd ~/.vim/bundle && \
    git clone https://github.com/roxma/nvim-yarp

cd ~/.vim/bundle && \
    git clone https://github.com/vim-airline/vim-airline

cd ~/.vim/bundle && \
    git clone https://github.com/vim-airline/vim-airline-themes

cd ~/.vim/bundle && \
    git clone https://github.com/ryanoasis/vim-devicons

cd ~/.vim/bundle && \
    git clone https://github.com/ludovicchabant/vim-gutentags

cd ~/.vim/bundle && \ 
    git clone https://github.com/roxma/vim-hug-neovim-rpc

cd ~/.vim/bundle && \
    git clone https://github.com/tiagofumo/vim-nerdtree-syntax-highlight

cd ~/.vim/bundle && \
    git clone https://github.com/tpope/vim-rails

cd ~/.vim/bundle && \
    git clone https://github.com/vim-ruby/vim-ruby

mkdir ~/.vim/colors

cd ~/.vim/colors && \
    git clone https://github.com/tomasr/molokai

cp ~/.vim/colors/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

cp .gitignore-template ~/.gitignore

git config --global core.excludesfile ~/.gitignore
