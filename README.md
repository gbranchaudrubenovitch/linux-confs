# linux-confs
scripts and confs that I use in linux/mac environments

## For nice colors in bash
* LS_COLORS: `wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors && echo 'eval $(dircolors -b $HOME/.dircolors)' >> $HOME/.bashrc && . $HOME/.bashrc`

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

## Bash mastery tips
* https://github.com/jlevy/the-art-of-command-line
