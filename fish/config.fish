if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
set -gx GOPATH ~/.go
set -gx PATH /opt/homebrew/bin $GOPATH/bin /run/current-system/sw/bin $HOME/.nix-profile/bin $PATH
set -gx KUBE_CONFIG_PATH ~/.kube/config
set -gx BUDGET_SERVICE_DB 'postgresql://postgres:postgres@worklab.hlab:5432/budget_service?sslmode=disable'
alias k kubectl
alias nv nvim

starship init fish | source

# pnpm
set -gx PNPM_HOME /Users/andres/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
