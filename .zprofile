# VERSION=DEVELOPMENT_VERSION

# Set up aliases
alias ll='ls -la'

# Enable colors in the terminal
export CLICOLOR=1

# Set up color scheme for the `ls` command output
# The LSCOLORS string is a concatenation of pairs of characters.
# The first character of each pair gives the color for the file type,
# and the second character gives the color for the background.
# The order of the pairs is as follows:
# 1. Directory
# 2. Symbolic link
# 3. Socket
# 4. Pipe
# 5. Executable
# 6. Block special
# 7. Character special
# 8. Executable with setuid bit set
# 9. Executable with setgid bit set
# 10. Directory writable to others, with sticky bit
# 11. Directory writable to others, without sticky bit
# 
# Color codes:
# a - black
# b - red
# c - green
# d - brown
# e - blue
# f - magenta
# g - cyan
# h - light grey
# A - bold black, usually shows up as dark grey
# B - bold red
# C - bold green
# D - bold brown, usually shows up as yellow
# E - bold blue
# F - bold magenta
# G - bold cyan
# H - bold light grey; looks like bright white
# x - default foreground or background

LSCOLORS=GxFxCxDxBxegedabagaced

# Source global profile if it exists
if [ -f /etc/zshrc ]; then
    . /etc/zshrc
fi