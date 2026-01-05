bash_files=(".zsh_aliases" ".zsh_exports")

for file in "${bash_files[@]}"; do
    if [ -f "$HOME/.dotfiles/zsh/$file" ]; then
        . "$HOME/.dotfiles/zsh/$file"
    fi
done