# linux-confs
scripts and confs that I use in linux/mac environments

## For nice colors in bash
* LS_COLORS: `wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors && echo 'eval $(dircolors -b $HOME/.dircolors)' >> $HOME/.bashrc && . $HOME/.bashrc`
    * Mac OS X:
      * `brew install coreutils`
      * in `.bash_profile`:

         ```
         # Required for gnutils without prefix
         PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"alias ll="ls -lapF"
         MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

         [[ -s ~/.bashrc ]] && source ~/.bashrc

         alias ls="ls --color=always" 
         alias grep="grep --color=always"
         alias egrep="egrep --color=always"
         ```

## Adding your public key to a new ssh host
*  `ssh-copy-id user@host`
*  `cat <public-key-file> | ssh user@host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys`

## Bash scripts
* start them with:

    ```
    #!/bin/bash
    set -euo pipefail
    trap "echo 'error: Script failed: see failed command above'" ERR
    ```
* fallback-to-default-if-unset with: `myVar=${1:-defaultValue}` 

## Big bash history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

## Bash mastery tips
* https://github.com/jlevy/the-art-of-command-line
