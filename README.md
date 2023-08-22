# gitignore

Bash script for creating .gitignore file for specific language

## Installation
```bash
chmod +x install.sh
./install.sh 
```

## Usage
```bash
gitignore <template name> # Autocomplete is provided
```

## Example
The next command will generate `.gitignore` file for python within current working directory:
```bash
gitignore Python
```

## Templates
All templates are coppied to `~/.gitignore_templates/` after the installation. You can place new template files or modify existing right there. 

## FAQ
> Why installation script asks me for sudo password?
> 
> To use autocomplete it needs to place completion script to `/etc/bash_completion.d/` which is owned by root.

> After installation command `gitignore` is not found.
> 
> Try to add `~/.local/bin/` directory to `$PATH`. You can use next command:
```bash
echo "export PATH=$PATH:/home/${USER}/.local/bin/" >> "~/.bashrc"
```

## References
All gitignore templates were taken from the official repo: https://github.com/github/gitignore
