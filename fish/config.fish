if status is-interactive
    # Commands to run in interactive sessions can go here
end

status --is-interactive; and rbenv init - fish | source

set -gx PATH /opt/homebrew/bin:$PATH
set -gx PATH $HOME/bin:/usr/local/bin:$PATH

# GO Setup
set -gx GOPATH $HOME/go
set -gx GOROOT "/opt/homebrew/opt/go/libexec"
set -gx PATH $PATH $GOPATH/bin


# Ruby setup
set -gx GEM_HOME $HOME/.gem
set -gx PATH $PATH:$(ruby -e 'print Gem.user_dir')/bin


set -gx NVM_DIR $HOME/.nvm
set -gx USE_GKE_GCLOUD_AUTH_PLUGIN True

set fish_path $HOME/.config/fish

. $fish_path/git_aliases.fish
. $fish_path/custom_variables.fish

alias ls="exa -l --icons"
alias rm="rm -rf"
alias zshconfig="nvim ~/.config/zshrc/.zshrc"
alias reload="source ~/.config/fish/config.fish"
alias nvconfig="nvim ~/.config/nvim"
alias tmuxconfig="nvim ~/.config/.tmux/.tmux.conf"
alias alconfig="nvim ~/.config/alacritty"
alias tmux="tmux -u"
alias nv='nvim'
alias k='kubectl'
alias lg='lazygit'
alias ct-be='cd ~/dev/chotot/be'
alias kp='k get pods'

function work
    ~/dev/work/
end

function dev
    ~/dev/
end

function learning
    ~/dev/learning/
end

starship init fish | source

function fish_greeting
end

function wpp
  set home $HOME
  set wallpaper (exa $home/.config/wallpapers | fzf)
  osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$home/.config/wallpapers/$wallpaper\""
end
