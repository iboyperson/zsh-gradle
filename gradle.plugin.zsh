#!/bin/zsh

function gradle_chpwd() {
    if [[ -f "./gradlew" ]]; then
        alias gradle="./gradlew"
    else
        unalias gradle 2> /dev/null
    fi
}

# Check directory shell is launched in
gradle_chpwd

chpwd_functions+=(gradle_chpwd)
