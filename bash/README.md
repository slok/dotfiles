
fonts
-----

    wget http://downloads.sourceforge.net/project/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.017.zip
    unzip SourceCodePro_FontsOnly-1.017.zip
    mkdir -p ~/.fonts
    cp SourceCodePro_FontsOnly-1.017/OTF/*.otf ~/.fonts/
    fc-cache -f -v

urxvt
-----
    
    pacman -Sy rxvt-unicode rxvt-unicode-terminfo xclip
    cp .Xresources $HOME/
    sudo cp urxvtclip /usr/lib/urxvt/perl/clipboard

tmux
----

    pacman -Sy tmux
    cp .tmux.conf $HOME/


