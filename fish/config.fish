if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set PATH /home/pietro/.cargo/bin:$PATH
alias emacs='emacsclient -a "." -c'
alias ls='exa --icons --color=always'
set PATH "$PATH:$HOME/.local/bin"
alias please='sudo'

function fish_command_not_found
    set FILENAME "$HOME/.local/share/fish-errors.count"
    test -f $FILENAME || echo "0" > $FILENAME
    set ERRORS  (cat $FILENAME)
    set ERRORS (math $ERRORS + 1)
    echo $ERRORS > $FILENAME
    echo "command not found: [!] $ERRORS"
end
