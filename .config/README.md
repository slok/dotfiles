
Sublime text 3
===============

Set Sublime text 3 settings
---------------------------
`cp -r sublime-text-3/ $HOME/.config`


Install package manager
-----------------------
* Go to: https://sublime.wbond.net/installation

Install Sublime packages
------------------------
* gitgutter
* git
* soda-theme
* sublimelinter
* Theme-Spacegray

Configure Linter
----------------
* Install the python linter
    * Make sure `$HOME/.local/bin` is  on `PATH`
    * pip install --user flake8 pep8
    * Install `sublimelinter-flake8` from the sublime package manager
