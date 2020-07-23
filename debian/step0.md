# Step0

* `mkdir -p ~/workspace/src ~/packages ~/data ~/tools ~/.local`
* Create file `~/.bash_aliases`
* Config `.bashrc`
    * Uncomment `grep=` and following lines
    * Uncomment `export GCC_COLORS=`
    * Uncomment `alias ll=` and following lines
    * Add `export PKG_CONFIG_PATH=~/.local/lib/pkgconfig`
    * Add `export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib`
    * Add `export PATH=~/.local/bin:$PATH`
* Install ncurses
    * Download [link](https://ftp.gnu.org/pub/gnu/ncurses/)
    * Install with `./configure --prefix=$HOME/.local --with-shared --without-debug --enable-pc-files --enable-widec --with-pkg-config-libdir=$PKG_CONFIG_PATH && make -j 8 && make install`
* Install protobuf
    * Download from [link](https://github.com/protocolbuffers/protobuf/releases)
    * Install with `./autogen.sh && ./configure --prefix=$HOME/.local && make -j 8 && make install`
* Install vim
    * Download from [link](https://github.com/vim/vim)
    * Install with `LDFLAGS=-L$HOME/.local/lib ./configure --prefix=$HOME/.local && make -j 8 && make install`
    * Add `export EDITOR=~/.local/bin/vim` to `~/.bashrc`
    * Update `~/.bash_aliases`)
        * `alias vim=~/.local/bin/vim`
* Install mosh-server
    * Download from `https://mosh.org/`
    * Install with `LDFLAGS="-L$HOME/.local/lib -lpthread" CPPFLAGS="-std=c++11 -I$HOME/.local/include" ./configure --prefix=$HOME/.local && make -j 8 && make install`
* Install tmux
    * Download from `https://github.com/tmux/tmux/archive/master.zip`
    * Install with `./autogen.sh && LDFLAGS=-L$HOME/.local/lib ./configure --prefix=$HOME/.local && make -j 8 && make install`
    * Copy `./files/.tmux.conf` to remote `~/.tmux.conf`
* Complete remote mosh & tmux start script
    * Copy `./files/.new-tmux-session.sh` to remote `~/.new-tmux-session.sh`
    * Copy `./files/.new-mosh-tmux-session.sh` to remote `~/.new-mosh-tmux-session.sh`
    * Set local alias `some-cmd=mosh {the server} --server=~/.new-mosh-tmux-session.sh`
