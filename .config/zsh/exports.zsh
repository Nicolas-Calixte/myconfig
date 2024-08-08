HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

	# XDG BASE DIRECTORY
[ -d $HOME/.config ] && export XDG_CONFIG_HOME="$HOME/.config"
[ -d $HOME/.cache ] && export XDG_CACHE_HOME="$HOME/.cache"
[ -d $HOME/.local/share ] && export XDG_DATA_HOME="$HOME/.local/share"
[ -d $HOME/.local/state ] && export XDG_STATE_HOME="$HOME/.local/state"

	# MOVING DIR ACCORDING TO XDG
export ANSIBLE_HOME="$XDG_CONFIG_HOME/ansible"
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="$XDG_CACHE_HOME/ansible/galaxy_cache"

export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export AWS_SHARED_CRENDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export BASHHISTFILE="$XDG_STATE_HOME/bash/history"
export VIMRC="$XDG_CONFIG_HOME/vim/.vimrc"
export VIMRCDIR="$XDG_CONFIG_HOME/vim"
export VIMINIT="source $VIMRC"

export SCRIPTSDIR="$HOME/.scripts"
export PATH="$HOME/.scripts:$PATH"
export PATH="$HOME/.scripts/utils:$PATH"
export EDITOR="vim"
export CLICOLOR=1
export LESSHISTFILE=-
