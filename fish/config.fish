if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -gx GOPATH ~/.local/go
set -gx JAVA_HOME /opt/homebrew/opt/openjdk@21
set -gx ANDROID_HOME ~/Library/Android/sdk
set -gx PATH /opt/homebrew/bin $GOPATH/bin /run/current-system/sw/bin $JAVA_HOME/bin $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools ~/.local/bin ~/.local/npm/bin $PATH
set -gx KUBE_CONFIG_PATH ~/.kube/config
alias k kubectl
alias n nvim
alias awslocal 'aws --endpoint-url=http://localhost:4566'
alias oc opencode
alias ll 'eza -laF --icons -TL 1 --group-directories-first --git --color=never'

alias claude-h 'env CLAUDE_CONFIG_DIR=$HOME/.local/claude-hoag claude $argv'
alias claude-m 'env CLAUDE_CONFIG_DIR=$HOME/.local/claude-monetago claude $argv'

starship init fish | source

# pnpm
set -gx PNPM_HOME /Users/andres/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
#
set -l env_file ~/.config/fish/env.fish
if test -f $env_file
    source $env_file
end

# opencode
fish_add_path /Users/andres/.opencode/bin
