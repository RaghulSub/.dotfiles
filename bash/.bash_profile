#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# For Telling Swaylock it is running on wayland
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland


# Added by Toolbox App
export PATH="$PATH:/home/raghul/.local/share/JetBrains/Toolbox/scripts"

. "$HOME/.cargo/env"
