export ANDROID_HOME=/opt/android-sdk-macosx
export ANDROID_SDK_ROOT=/opt/android-sdk-macosx

export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/build-tools/22.0.1:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/emulator
export PATH="/usr/local/Cellar/qt@5.5/5.5.1_1/bin:$PATH"

export BUNDLER_EDITOR=subl

source "$(brew --prefix)/etc/bash_completion"

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWCOLORHINTS="yes"

PS1='\n\e[31;1m\u@\h on \d at \@\n\e[0;34m\w\e[0m$(__git_ps1 " \[\e[0;36m\]-> \[\e[0;32m\]%s\[\e[m\]")\nB$ '

alias canary='open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir=/Users/brett/canary_data'
alias npm-exec='PATH=$(npm bin):$PATH'

alias dexec='docker-compose run web'
alias dbuild='docker-compose down && docker-compose build'
alias dup='docker-compose up -d && CONTAINERID=$(docker ps --no-trunc | grep "rails s" | cut -f1 -d " ") && docker attach $CONTAINERID'
alias ddown='docker-compose down'
alias drestart='docker-compose down && dup'

alias git_hooks='cp -r ~/.git_template/hooks/ ./.git/hooks/'
alias git_delete_merged='git branch --merged | egrep -v "(^\*|master|dev|qa|production)" | xargs git branch -d'

export PATH=$PATH:/opt/tenforward

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
