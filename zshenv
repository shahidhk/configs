
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#export VAGRANT_DEFAULT_PROVIDER=virtualbox
export EDITOR=vim
export TERM=xterm-256color


export GOPATH=$HOME/workspace/go
export GOTOOLSPATH=$HOME/workspace/go-tools

#export PATH=$PATH:$GOTOOLSPATH/bin
#export PATH=$PATH:/snap/bin
#export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
#export PATH=$PATH:/home/shahidh/bin/android-studio/plugins/android/lib/templates/gradle/wrapper
#export PATH=/usr/local/bin:/home/shahidh/Desktop/android_session/platform-tools:/home/shahidh/.local/bin:$PATH
#export ANDROID_HOME=$HOME/bin/android-sdk-linux
export LANG=en_IN.UTF-8

# The next line updates PATH for the Google Cloud SDK.
#if [ -f /home/shahidh/bin/google-cloud-sdk/path.zsh.inc ]; then
#  source '/home/shahidh/bin/google-cloud-sdk/path.zsh.inc'
#fi
#

export PATH="$PATH:$HOME/.yarn/bin:$HOME/.local/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:$GOPATH/bin:$GOTOOLSPATH/bin:/snap/bin:$HOME/workspace/flutter/bin"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:$GOPATH/bin:$GOTOOLSPATH/bin:/home/linuxbrew/.linuxbrew/bin"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ALTERNATE_EDITOR="vim"
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
