# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pico/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZDOTDIR="${HOME}/.config/zsh"
ZSHDDIR="${HOME}/.config/zsh.d"

# oh-my-zsh
export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="agnoster"

# DEFAULT_USER=prompt_context(){}

plugins=(
	git
	branch
	bundler
	poetry
	pyenv
	# pyLint
	python
)

source ${ZSH}/oh-my-zsh.sh

##################

export EDITOR=nano
export VISUAL=nano
export PATH="${HOME}/.poetry/bin:${HOME}/.local/bin:/usr/local/bin:${PATH}"
. "/home/pico/.acme.sh/acme.sh.env"
