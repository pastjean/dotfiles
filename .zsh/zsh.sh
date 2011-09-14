# Initialize

# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all the config files that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Add all defined plugins to path
plugin=${plugin:=()}
for plugin ($plugins) fpath=($ZSH/plugins/$plugin $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

# Load all plugins
for plugin ($plugins); do
 if [ -f $ZSH/plugins/$plugin/*.zsh ]; then
   source $ZSH/plugins/$plugin/$plugin.plugin.zsh
 fi
done
