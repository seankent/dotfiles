
#PS1="%F{green}❯%f "
PS1="%F{green}[%c] ❯%f "

# Don't record a command that was just run
setopt HIST_IGNORE_DUPS
# Remove older duplicate entries from history
setopt HIST_IGNORE_ALL_DUPS
# Don't show duplicates when searching history
setopt HIST_FIND_NO_DUPS
