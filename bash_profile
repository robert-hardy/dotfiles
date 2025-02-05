export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# opam configuration
test -r /Users/robert/.opam/opam-init/init.sh && . /Users/robert/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

. "$HOME/.local/bin/env"

alias nvim="$HOME/bin/nvim-macos-x86_64/bin/nvim"

pytree() {
  tree -I __pycache__ -I "*.egg-info" "$@"
}

tm() {
  tmux new-session -d -n bash
  tmux new-window -d -n nvim
  tmux new-window -d -n python
  tmux new-window -d -n ai
  tmux a
}

##
# Your previous /Users/robert/.bash_profile file was backed up as /Users/robert/.bash_profile.macports-saved_2025-01-03_at_16:49:34
##

# MacPorts Installer addition on 2025-01-03_at_16:49:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

