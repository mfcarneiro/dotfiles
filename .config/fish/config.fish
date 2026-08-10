source /usr/share/cachyos-fish-config/cachyos-config.fish

alias tt="taskwarrior-tui"

set -gx CHROME_EXECUTABLE /usr/bin/chromium
set -Ux EDITOR nvim
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $PATH:/usr/local/go/bin
set -gx ERL_AFLAGS "-kernel shell_history enabled"

# # ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

starship init fish | source
