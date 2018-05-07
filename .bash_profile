# Prompt
# export PS1='\w\$ '

# if [[ -s /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]]; then
#   source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
#   export PS1='\w\$$(__git_ps1) '
# fi

# Paths
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/Users/hari/Library/Developer/android-ndk-r10d:/Applications/adt-bundle/android-sdk-macosx/platform-tools:/usr/local/apache-ant-1.9.4/bin
export NDK_ROOT=/Users/hari/Library/Developer/android-ndk-r10d
export PATH="$PATH:/Applications/adt-bundle/android-sdk-macosx/platform-tools"
export PATH="$PATH:/Applications/adt-bundle/android-sdk-macosx/build-tools"
export PATH="$PATH:/Applications/adt-bundle/android-sdk-macosx/tools"
export NDK_MODULE_PATH="/Users/hari/Documents/cocos2d-x-2.1.5"
export ANDROID_HOME="/Applications/adt-bundle/android-sdk-macosx"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ANT_ROOT=/usr/local/apache-ant-1.9.4/bin
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/hari/Downloads/cocos2d-js-v3.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Applications/adt-bundle/android-sdk-macosx
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=/Users/hari/Library/Developer/flow:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/hari/Downloads/cocos2d-x-3.4/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH


# Override git-config "core.editor" to enforce vim when using SSH
if test -n "$SSH_CONNECTION"; then
  export GIT_EDITOR='vim'
fi

#export EDITOR='subl -w'

function diffx {
  `/Applications/Xcode.app/Contents/Applications/FileMerge.app/Contents/MacOS/FileMerge -left $1 -right $2`
}

function defs {
  defa; sleep 2; defb
}

function defa {
  defaults read > /tmp/defaults_a
}

function defb {
  defaults read > /tmp/defaults_b
  diff /tmp/defaults_a /tmp/defaults_b
}

if [[ -s /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]]; then
  source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

function guser {
  if [ -z "$1" ]
  then
  echo "Current git configuration:"
    git config --get user.name
    git config --get user.email
  else
    echo "New git configuration:"
    git config user.name $1
    git config user.email $2
    git config --get user.name
    git config --get user.email
  fi
}

function ghalo {
  guser halo $(echo "Z2l0aHViQHBvc3Rlby5vcmc=" | openssl enc -d -base64)
}

source $HOME/.bash_prompt
source $HOME/.aliases
# Local bin directory takes highest precedence
# export PATH="bin:$PATH"
