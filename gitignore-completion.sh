_complete_gitignore() {
    COMPREPLY=($(compgen -W "$(ls ~/.gitignore_templates | cut -d '.' -f 1)" "${COMP_WORDS[1]}"))
}

complete -F _complete_gitignore gitignore