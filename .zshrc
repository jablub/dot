# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="andrew"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

# export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.bin:~/Applications:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
#export LANG=en_UK
#export LOCALE=en_UK
#export LC_CTYPE=en_UK.UTF-16
#export LC_ALL=en_UK.UTF-16

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias d="docker"
alias dl="docker logs -f --tail=1000"

alias brepl="boot -i \"(require 'cider.tasks)\" -d org.clojure/tools.nrepl\:0.2.12 -d refactor-nrepl\:2.4.0-SNAPSHOT -d cider/cider-nrepl\:0.18.0-SNAPSHOT cider.tasks/add-middleware -m refactor-nrepl.middleware/wrap-refactor -m cider.nrepl/cider-middleware repl"

alias xc="xclip -selection c"

# reduce delay of escape
export KEYTIMEOUT=0.1

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# allows you to type Bash style comments on your command line
setopt interactivecomments

# Zsh has a spelling corrector
# setopt CORRECT

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# caps lock key 
# setxkbmap -option 'caps:ctrl_modifier'
# xcape -e 'Caps_Lock=Escape'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/andrew/Downloads/google-cloud-sdk-221.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc' ]; then . '/home/andrew/Downloads/google-cloud-sdk-221.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/andrew/Downloads/google-cloud-sdk-221.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/andrew/Downloads/google-cloud-sdk-221.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc'; fi
