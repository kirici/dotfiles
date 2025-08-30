function __fish_cancel_commandline
    set -l cmd (commandline)
    commandline -C 1000000
    echo (set_color -b bryellow black)"^C"(set_color normal)
    for i in (seq (commandline -L))
        echo ""
    end
    commandline ""
    commandline -f repaint
end

function fish_user_key_bindings
    bind $argv \cc __fish_cancel_commandline
end

