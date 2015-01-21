
Sourcecodepro font
-----

    wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip
    unzip 1.017R.zip
    mkdir -p ~/.fonts
    cp source-code-pro-1.017R/OTF/*.otf ~/.fonts/
    fc-cache -f -v

Fontawesome font & powerline
----
    wget http://fortawesome.github.io/Font-Awesome/assets/font-awesome-4.2.0.zip
    unzip font-awesome-4.2.0.zip
    cp font-awesome-4.2.0/fonts/FontAwesome.otf ~/.fonts/
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O /home/slok/.fonts/PowerlineSymbols.otf
    fc-cache -f -v

Set fallback for glyphs
---
    cp -r ../.config/fontconfig $HOME/.config
    fc-cache -f -v

interesting links:

* http://www.freedesktop.org/software/fontconfig/fontconfig-user.html
* https://wiki.archlinux.org/index.php/font_configuration
* https://github.com/gabrielelana/awesome-terminal-fonts
* https://github.com/thestinger/termite

termite
-------

    yaourt -Sy termite-git
    cp -r ../.config/termite $HOME/.config


testing glyps:

    python -c "print(''.join([chr(i) + '\u0020\u0020'  for i in range(61440, 61440 + 525)]))"
    python -c "print('\u2588\ue0a0\ue0a1\ue0a2\ue0b0\ue0b1\ue0b2\ue0b3')"

interesting links:

* https://wiki.archlinux.org/index.php/Termite


tmux
----

    pacman -Sy tmux
    cp .tmux.conf $HOME/

Bash
----

To add git support (current branch) in the prompt download the app:

    $ git clone git://github.com/jimeh/git-aware-prompt.git $HOME/.git-aware-prompt

Uncomment:

    #export GITAWAREPROMPT=~/.git-aware-prompt
    #source $GITAWAREPROMPT/main.sh
    #PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$YELLOW \$git_branch$RESET\$ "

And comment:

    PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$RESET\$ "

Deprecated
==========

urxvt
-----

    pacman -Sy rxvt-unicode rxvt-unicode-terminfo xclip
    cp .Xresources $HOME/
    sudo cp urxvtclip /usr/lib/urxvt/perl/clipboard
    xrdb ~/.Xresources
