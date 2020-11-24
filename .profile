#
# ~/.bash_profile
#

# export EDITOR="vim" # something sets it back to nano if I change it here, idk why
export PATH="$PATH:~/.local/bin"
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
