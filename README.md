# noreallyjustfuckingstopalready
Please OS X (or whatever your name is) just fucking reset your DNS cache please

F.A.Q

Q) What? Why?
A) "What if ping was different on every build of linux. Shit gets old."
 (HT post_break https://news.ycombinator.com/item?id=11902850)

Q) I'm not sure. The `dscacheutil -flushcache` command he lists for Snow Leopard still works for me (OS X Yosemite here).
A) The command didn't fail, but it didn't clear the cache either: (HT masklinn https://news.ycombinator.com/item?id=11902754)

# Installing

### Bash / not using any frameworks

If you're using bash, or aren't using a framework, just clone this repository and add it to your `$PATH`.

### [Antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle eventi/noreallyjustfuckingstopalready` to your `.zshrc` with your other bundle commands.

Antigen will handle cloning the plugin for you automatically the next time you start zsh. You can also add the plugin to a running zsh with `antigen bundle eventi/noreallyjustfuckingstopalready` for testing before adding it to your `.zshrc`.

### [Oh-My-Zsh](http://ohmyz.sh/)

1. `cd ~/.oh-my-zsh/custom/plugins`
2. `git clone git@github.com:eventi/noreallyjustfuckingstopalready.git`
3. Add the repo to your plugin list

### [Zgen](https://github.com/tarjoilija/zgen)

Add `zgen load eventi/noreallyjustfuckingstopalready` to your .zshrc file in the same function you're doing your other `zgen load` calls in.

