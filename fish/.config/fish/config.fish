if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /usr/local/go/bin
fish_add_path /flutter/bin

fish_add_path ~/.sdkman
fish_add_path ~/.local/kitty.app/bin/kitty

fish_add_path ~/.cargo/bin
fish_add_path ~/.nvm
fish_add_path ~/.local/share/bob/nvim-bin

fish_add_path ~/.nvm

set -Ux BUN_INSTALL $HOME/.bun
fish_add_path ~/.bun/bin

set -Ux ANDROID_HOME = ~/Android/Sdk

alias ls "exa -a --color=always --icons"
alias exa "exa -a --color=always --icons"
alias where "which"
alias cls "clear"
alias c "clear"
alias .. "cd .."
alias apt-get 'sudo apt-get'

alias update "sudo apt update && sudo apt upgrade -y"
# Stop after sending count ECHO_REQUEST packets #
alias ping 'ping -c 5'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'
alias py "python3"
alias psql 'psql -U postgres' 

zoxide init fish | source
starship init fish | source
# pnpm
set -gx PNPM_HOME "/home/aan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
