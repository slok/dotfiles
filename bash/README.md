
fonts
-----

    wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip
    unzip 1.017R.zip
    mkdir -p ~/.fonts
    cp source-code-pro-1.017R/OTF/*.otf ~/.fonts/
    fc-cache -f -v

urxvt
-----
    
    pacman -Sy rxvt-unicode rxvt-unicode-terminfo xclip
    cp .Xresources $HOME/
    sudo cp urxvtclip /usr/lib/urxvt/perl/clipboard
    xrdb ~/.Xresources

tmux
----

    pacman -Sy tmux
    cp .tmux.conf $HOME/


