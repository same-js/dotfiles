######### commands I created #########
PATH="$PATH:~/bin"

###### homebrew (for Apple Chip) #####
eval "$(/opt/homebrew/bin/brew shellenv)"

############### Android ##############
# Android Studio (for ReactNative)
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

################ Ruby ################
# rbenv
eval "$(rbenv init - bash)"
# openssl (used when building Ruby on rbenv)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

############### Node.js ##############
# nodenv
eval "$(nodenv init -)"

############# Go Language ############
# golang
export GOPATH=$HOME/.go

########## Terminal Settings #########
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

################ iTerm2 ##############
export CLICOLOR=1
export TERM=xterm-256color
