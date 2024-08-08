	# IMPORT FILES
source "$ZDOTDIR/functions.sh"

zsh_add_file "aliases.zsh"
zsh_add_file "exports.zsh"
zsh_add_file "prompt.zsh"
zsh_add_file "vi-mode.zsh"

	# The following lines were added by compinstall
zstyle :compinstall filename '~/.config/zsh/.zshrc'

	# End of lines added by compinstall

autoload -U colors && colors
unsetopt BEEP
setopt autocd
zle_highlight=('paste:none')

	# Autocomplete/tab
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

	# change fg color of suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
