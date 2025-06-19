if status is-interactive && command -sq direnv && not functions -q __direnv_export_eval
    direnv hook fish | source
end
