# Step2

* Install python packages
    * `pip install -U --user pip powerline-status powerline-gitstatus`
    * Update `~/.bash_aliases`
        * Add `alias pip=~/.local/bin/pip`
* Config powerline status
    * Copy
        * `./files/powerline_shell_colorscheme.json` to remote `~/.local/lib/python2.7/site-packages/powerline/config_files/colorschemes/shell/default.json`
        * `./files/powerline_shell_theme.json` to remote `~/.local/lib/python2.7/site-packages/powerline/config_files/themes/shell/custom.json` 
    * Update file `~/.local/lib/python2.7/site-packages/powerline/config_files/config.json`
        * `ext.shell.theme` to `custom`
    * Update file `~/.bashrc`
        * Add `powerline-daemon -q`
        * Add `export POWERLINE_BASH_CONTINUATION=1`
        * Add `export POWERLINE_BASH_SELECT=1`
        * Add `. ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh`
