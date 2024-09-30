# Vars

HISTFILE=~/.zsh_history
SAVEHIST=1000
 
setopt inc_append_history # To save every command before it is executed 
setopt share_history      # setopt inc_append_history


source ~/GIT/dotfiles/zsh/plugins/fixls.sh

# Use neovim as editor
export EDITOR="nvim"

# Aliases
alias ofm='gio open .'
alias git='LANG=en_US.UTF-8 git'

# Custom cd: cd + ls
chpwd() ls


# Load zsh plugins
source ~/GIT/dotfiles/zsh/plugins/ohmyzsh/lib/history.zsh
source ~/GIT/dotfiles/zsh/plugins/ohmyzsh/lib/key-bindings.zsh
source ~/GIT/dotfiles/zsh/plugins/ohmyzsh/lib/completion.zsh
source ~/GIT/dotfiles/zsh/plugins/ohmyzsh/plugins/vi-mode/vi-mode.plugin.zsh
source ~/GIT/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/GIT/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

autoload -U compinit
compinit -i

source ~/GIT/dotfiles/zsh/prompt.sh
