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
> ```bash
> echo "export PATH=$PATH:/home/${USER}/.local/bin/" >> "~/.bashrc"
> ```

> Is it possible to use script if I'm Windows user?
>
> You can run it using:
> - [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), with no any differences;
> - [Git Bash](https://git-scm.com/downloads), not using installation script but not having autocomplete and manually adjusting path to templates by changing next line:
> ```bash
> # gitignore.sh
> TEMPLATE="/home/${USER}/.gitignore_templates/$1.gitignore"
> ```
> Should be changed to something like following:
> ```bash
> TEMPLATE=~/"Documents/.gitignore_templates/$1.gitignore"
> ```
> The above example assumes that templates are placed into `C:\Users\<user>\Documents\.gitignore_templates` folder.

## References
All gitignore templates were taken from the official repo: https://github.com/github/gitignore
