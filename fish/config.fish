if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set PATH /home/pietro/.cargo/bin:$PATH
