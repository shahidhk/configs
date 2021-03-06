# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="steeef"

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
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#. /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh

bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# setxkbmap -option caps:swapescape
# setxkbmap -option 'caps:ctrl_modifier'  
# xcape -e 'Caps_Lock=Escape'


alias yaml2json="python3 -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=2, sort_keys=False)'"
alias json2yaml="python3 -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, indent=2, default_flow_style=False)'"
alias update="sudo apt update && sudo apt dist-upgrade -y"
alias install="sudo apt install"
alias gac="git add .; git commit -m "
alias json="python -m 'json.tool'"
alias g="git"
alias gpo="git push origin master"
alias tgzc='function _blah(){ tar -zcf $1.tar.gz $1; };_blah'
alias pypretty="function _blah(){ python -c 'import sys, yaml, json; json.dump(sys.stdin, sys.stdout, indent=4)' < $1 > $1.pretty }"
alias ikubectl="kubectl --insecure-skip-tls-verify=true"

alias hctl="cd /home/shahidh/work/go/src/github.com/hasura/hasuractl"
alias gs="gst"

# pbcopy hack
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias k="kubectl"
alias kh="kubectl -n hasura"
alias kk="kubectl -n kube-system"

alias edmn="emacs --daemon"
alias ec="emacsclient -create-frame --alternate-editor="""
alias vim="emacsclient -create-frame --alternate-editor="""

alias mouseoff="xinput set-prop 8 \"Device Enabled\" 0"
alias mouseon="xinput set-prop 8 \"Device Enabled\" 1"

alias gphm="git push hasura master"

alias dc="docker-compose"

dockerstop() {
  docker stop $1
  docker rm $1
}

dockerbp () {
  docker build -t $1 .
  docker push $1
}

urlencode() {
  python -c 'import urllib, sys; print urllib.quote(sys.argv[1], sys.argv[2])' \
    "$1" "$urlencode_safe"
}

kube_prompt()
{
   kubectl_current_context=$(kubectl config current-context)
   kubectl_prompt="( \u2388 $kubectl_current_context )"
   echo $kubectl_prompt
}

RPROMPT='%F{81}$(kube_prompt)'

# The next line enables shell command completion for gcloud.
if [ -f /home/shahidh/bin/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/shahidh/bin/google-cloud-sdk/completion.zsh.inc'
fi

# Stack auto-complete
# eval "$(stack --bash-completion-script stack)"

source <(kubectl completion zsh)
# source '/home/shahidh/bin/azure-cli/az.completion'


# The next line updates PATH for Netlify's Git Credential Helper.
if [ -f '/home/shahidh/.netlify/helper/path.zsh.inc' ]; then source '/home/shahidh/.netlify/helper/path.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/home/shahidh/bin

compress_pdf() {
  ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
}
