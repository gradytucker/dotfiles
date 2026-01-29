export PATH="${PATH}:REPLACE"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


eval "$(pyenv init --path)"

alias ssh="kitty +kitten ssh"
alias ssh-home-server="ssh gradytucker@192.168.4.123"
