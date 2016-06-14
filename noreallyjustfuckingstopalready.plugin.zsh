# Do plugin setup to make this easily loadable by oh-my-zsh, zgen and other
# oh-my-zsh-compatible frameworks

if [[ "$(uname -s)" = "Darwin" ]]; then
  # Add the plugin's diretory to user's path
  PLUGIN_HOME="$(dirname $0)"
  export PATH=${PATH}:${PLUGIN_HOME}
  alias flush-osx-cache=flush.sh
fi
