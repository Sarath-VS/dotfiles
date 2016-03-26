export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

[[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  if $_isxrunning; then

    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

    export TERM='xterm-256color'

     B='\[\e[1;38;5;33m\]'
    LB='\[\e[1;38;5;81m\]'
    GY='\[\e[1;38;5;242m\]'
     G='\[\e[1;38;5;82m\]'
     P='\[\e[1;38;5;161m\]'
    PP='\[\e[1;38;5;93m\]'
     R='\[\e[1;38;5;196m\]'
     Y='\[\e[1;38;5;214m\]'
     W='\[\e[0m\]'

    get_prompt_symbol() {
      [[ $UID == 0 ]] && echo "#" || echo " ✔ "
    }
    parse_git_branch () {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/(\1)/'
    }
    evil_git_dirty () {
      [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"
    }

    if [[ $PS1 && -f /usr/share/git/git-prompt.sh ]]; then
      source /usr/share/git/completion/git-completion.bash
      source /usr/share/git/git-prompt.sh

      export GIT_PS1_SHOWDIRTYSTATE=1
      export GIT_PS1_SHOWSTASHSTATE=1
      export GIT_PS1_SHOWUNTRACKEDFILES=0

      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
      export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
    else
      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\w$GY]$W\$(get_prompt_symbol) "
      export PS1="$G\u $B\w$G\$(parse_git_branch)$R\$(evil_git_dirty)$G\$(get_prompt_symbol) $W"
    fi
  else
    export TERM='xterm-color'
  fi
export PATH=$PATH:~/bin

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gl='git log'
alias gp="git push"
alias gpl="git pull"
alias ip="ifconfig | grep 'broadcast'"
alias jrepl="java -jar /Users/sarathv/projects/javarepl.jar"

export NVM_DIR="/Users/sarathv/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
