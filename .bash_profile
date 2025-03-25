export PATH="/opt/homebrew/bin:$PATH"
export ANDROID_HOME=/Users/brett/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/brett/Library/Android/sdk

export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/build-tools/22.0.1:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/emulator
export PATH="/usr/local/Cellar/qt@5.5/5.5.1_1/bin:$PATH"

export PATH="$PATH:~/.yarn/bin"

export BUNDLER_EDITOR=subl

source "$(brew --prefix)/etc/bash_completion"

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWCOLORHINTS="yes"

PS1='\n\e[31;1m\u@\h on \d at \@\n\e[0;34m\w\e[0m$(__git_ps1 " \[\e[0;36m\]-> \[\e[0;32m\]%s\[\e[m\]")\nB$ '

alias canary='open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir=/Users/brett/canary_data'
alias npm-exec='PATH=$(npm bin):$PATH'
alias ionic='npm-exec ionic'

alias dc='docker compose'
alias k='kubectl'

alias git_hooks='cp -r ~/.git_template/hooks/ ./.git/hooks/'
alias git_delete_merged='git branch --merged | egrep -v "(^\*|main|master|dev|qa|production)" | xargs git branch -d'

alias bundle_update_patch="bundle update \$(bundle list | awk '\$1 ~ /^\*/ {print \$2}' | grep -v bundler) --patch"

alias arch_windows="arch -x86_64 /bin/bash"

export PATH=$PATH:/opt/tenforward
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

bind 'set bell-style none'
export PATH="/usr/local/opt/curl/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(direnv hook bash)"

# Created by `pipx` on 2024-05-24 14:35:29
export PATH="$PATH:/Users/brett/.local/bin"
