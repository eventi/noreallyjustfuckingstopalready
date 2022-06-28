Please OS X (or whatever your name is) just fucking reset your DNS cache please

Installation:
=====
From source:
-----
    git clone https://github.com/eventi/noreallyjustfuckingstopalready.git
    cd noreallyjustfuckingstopalready
    install -b flu.sh ${PREFIX:-/usr/local}/bin/flu.sh
    sudo flu.sh

With https://github.com/bpkg/bpkg do:

`bpkg install -g eventi/noreallyjustfuckingstopalready`

Antigen
-----
Add `antigen bundle eventi/noreallyjustfuckingstopalready` to your `.zshrc` with your other bundle commands.

Antigen will handle cloning the plugin for you automatically the next time you start zsh. You can also add the plugin to a running zsh with `antigen bundle eventi/noreallyjustfuckingstopalready` for testing before adding it to your `.zshrc`.

Fig
-----

Install this plugin with [Fig](https://fig.io) in just one click.

<a href="https://fig.io/plugins/other/noreallyjustfuckingstopalready_eventi" target="_blank"><img src="https://fig.io/badges/install-with-fig.svg" /></a>


Oh-My-Zsh
-----
    cd ~/.oh-my-zsh/custom/plugins
    git clone git@github.com:eventi/noreallyjustfuckingstopalready.git

Then add the repo to your plugin list

Zgen
-----
Add `zgen load eventi/noreallyjustfuckingstopalready` to your .zshrc file in the same function you're doing your other `zgen load` calls in. zgen will take care of cloning the repository and adding it to your `$PATH`.

F.A.Q
=====
**Q) What? Why?**

A) "What if ping was different on every build of linux. Shit gets old."
 (HT post_break https://news.ycombinator.com/item?id=11902850)

**Q) "... The `dscacheutil -flushcache` command he lists for Snow Leopard still works for me (OS X Yosemite here)."**

A) The command didn't fail, but it didn't clear the cache either: (HT masklinn https://news.ycombinator.com/item?id=11902754)


Contributors:

* https://github.com/justindowning
* https://github.com/jwerle
* https://github.com/unixorn
* https://github.com/kenahoo
