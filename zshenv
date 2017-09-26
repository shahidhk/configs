export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export VAGRANT_DEFAULT_PROVIDER=virtualbox
alias io='TF_CMD=$(TF_ALIAS=fuck PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1 | tail -n 1)) && eval $TF_CMD && print -s $TF_CMD'
export EDITOR=vim
export TERM=xterm-256color


export GOPATH=$HOME/work/go
export GOTOOLSPATH=$HOME/work/go-tools

export PATH=$PATH:$GOTOOLSPATH/bin
export PATH=$PATH:/snap/bin
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=$PATH:/home/shahidh/bin/android-studio/plugins/android/lib/templates/gradle/wrapper
export PATH=/usr/local/bin:/home/shahidh/Desktop/android_session/platform-tools:/home/shahidh/.local/bin:$PATH
export ANDROID_HOME=$HOME/bin/android-sdk-linux
export LANG=en_IN.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/shahidh/bin/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/shahidh/bin/google-cloud-sdk/path.zsh.inc'
fi

export PATH=$HOME/bin:$PATH
