
bash_files=("bash_aliases" "bash_exports")

for file in "${bash_files[@]}"; do
    if [ -f "$HOME/.dotfiles/bash/.$file" ]; then
        . "$HOME/.dotfiles/bash/.$file"
    fi
done