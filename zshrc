# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/.cargo/bin:$HOME/.poetry/bin

# Path to your oh-my-zsh installation.
export ZSH=/home/czocher/.oh-my-zsh

# Configure restic
export RESTIC_PASSWORD_COMMAND="gopass show backup"
export RESTIC_REPOSITORY=sftp:czocher@10.0.0.10:/home/restic

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Hide the PS1 user information when unnecessary
DEFAULT_USER="czocher"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gpg-agent pass web-search kate colored-man-pages virtualenvwrapper virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias g++='g++ -Wall -Wextra -pedantic -std=c++14'
alias gcc='gcc -Wall -Wextra -pedantic'
alias vim='nvim'
alias python='ipython3'
alias python2='ipython2'
alias gpg='gpg2'
alias pass='gopass'

# Disable nbsp for Facebook
setxkbmap -option "nbsp:none"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# XDG

# Set XDG to defaults if not set
if [ -z "$XDG_DATA_HOME" ]
then
  export XDG_DATA_HOME="$HOME"/.local/share
fi

if [ -z "$XDG_CONFIG_HOME" ]
then
  export XDG_CONFIG_HOME="$HOME"/.config
fi

if [ -z "$XDG_CACHE_HOME" ]
then
  export XDG_CACHE_HOME="$HOME"/.cache
fi


## ZSH

mkdir -p "$XDG_CACHE_HOME"/zsh
mkdir -p "$XDG_DATA_HOME"/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history

## Xauthority
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ERRFILE="$XDG_RUNTIME_DIR"/xsession-errors

# Rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# Less
mkdir -p "$XDG_CACHE_HOME"/less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

source /home/czocher/.local/share/cargo/env
