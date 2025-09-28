set -g fish_greeting

# Your existing starship initialization
starship init fish | source

# Comment out or remove any existing fish_greeting call
# function fish_greeting; end

# Run fastfetch on startup
if status is-interactive
    fastfetch
end

# Other configurations...

function ls
  eza --color=always --icons --grid --all --git $argv
end

# Alias
abbr -a up 'sudo pacman -Suy'

# Set up fzf key bindings
fzf --fish | source
