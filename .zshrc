# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sarathvs/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sunrise"

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
ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup
plugins=(git adb history-search-multi-word zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
# Zsh history
SAVEHIST=10000
HISTFILE=~/.zsh_history

PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

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

# Terminal options
setopt inc_append_history share_history

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias ij="open -a /Applications/IntelliJ\ IDEA.app/ ."
alias orm="open -a /Applications/RubyMine.app/ ."
alias as="open -a /Applications/Android\ Studio.app/"
alias gui="open -a /Applications/SourceTree.app/ ."
alias gitk="open -a /Application/GitKraken.app/ ."
alias subl="open -a /Applications/Sublime\ Text.app/"

alias g="git"
alias ga="git add"
alias gst="git status"
alias gup="git pull --reb"
alias gp="git push"
alias gl="git log"
alias gco="git checkout"
alias gc="git commit"
alias gd="git diff"
alias gs="git stash"
alias gsp"git stash pop"

alias pam="cd ~/Projects/Pam/"
alias adenlie="cd ~/Projects/Adenlie"
alias pseer="cd ~/Projects/Pam/promotion_service"
alias ppser="cd ~/Projects/Pam/promotion_planning_service"
alias papp="cd ~/Projects/Pam/promotion_app"
alias auth="cd ~/Projects/Pam/authorization_service"
alias cas="~/Projects/Pam/cas"

alias jrepl="java -jar ~/javarepl.jar"
alias sra="~/Projects/Pam/store_replenishment_app"
alias srs="~/Projects/Pam/store_replenishment_service"
alias b="sh build_scripts/local_build.sh"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_8_HOME=$(/usr/libexec/java_home)

#export ANDROID_HOME=$(/Users/sarathvs/Library/Android/sdk)
#export ANDROID_AVD_HOME=$(/Users/sarathvs/.android/avd/)
#export ANDROID_SDK_ROOT=$(/Users/prasunkumar/Library/Android/sdk)
export PATH="/Users/sarathvs/Library/Android/sdk/platform-tools":$PATH
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sarathvs/.sdkman"
#[[ -s "/Users/sarathvs/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sarathvs/.sdkman/bin/sdkman-init.sh"

eval "$(direnv hook zsh)"
