if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -gx GOPATH ~/.go
set -gx PATH /opt/homebrew/bin $GOPATH/bin /run/current-system/sw/bin $PATH
set -gx KUBE_CONFIG_PATH ~/.kube/config
alias k kubectl
alias nv nvim

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
