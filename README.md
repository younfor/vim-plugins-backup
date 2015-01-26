# vim-plugins-backup
 this is my plugins for vim
 
 first clone this git and copy .vim .vimrc to your home

    git clone XXXXXX
    cd XXXX
    cp .vim .vimrc -r ~
    chmod 777 -R .vim .vimrc

#Install:

1. you must set up git,bundle,ctags

    sudo apt-get install git
    cd ~/.vim/bundle/
    git clone https://github.com/gmarik/vundle.git
    sudo apt-get install ctags


2. open vim and install vundle plugins

    >>>vim
    :BundleInstall
    
wait about 40min depend on speed, because YoucompleteMe is very big.


3. compile YCM
    
    >>>cd ~/.vim/bundle/youcompleteme

　　  >>>./setup.sh
