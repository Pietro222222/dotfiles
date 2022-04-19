if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set PATH /home/pietro/.cargo/bin:$PATH
alias emacs='emacsclient -a "." -c'
alias ls='exa --icons --color=always'
set PATH "$PATH:$HOME/.local/bin"
