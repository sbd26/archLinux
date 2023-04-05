export ZSH="$HOME/.oh-my-zsh"
HYPHEN_INSENSITIVE="true"
# export EDITOR=nvim
zstyle ':omz:update' mode reminder  # just remind me to update when it's time


COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
source $ZSH/oh-my-zsh.sh

#PLUGINS
 plugins=(
   git
   vi-mode
 )

 bindkey -v



#CUSTOM PLUGINS
source /home/bd26/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/bd26/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/bd26/.oh-my-zsh/plugins/z/z.plugin.zsh


#Setting Up aliases
source /home/bd26/.zshrc_personal

#Extra
export TERM=xterm-256color


#STARSHIP
eval "$(starship init zsh)"


alias syncc='sudo pacman -Syy'
alias working_directory='cd ~/cp'
alias nvimconfig='cd ~/.config/nvim'
alias i3config='cd ~/.config/i3'
alias clean='sudo pacman -Scc'

function ok() {
  items=("syncc" "update" "clean" "working_directory" "nvimconfig" "i3config")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt="Bruh : " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  fi
  eval "$config"
}

function nvim () {
    command nvim "$@" && echo -ne '\e[ q'
}
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
