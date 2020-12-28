# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/arif/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)


bindkey -e
bindkey "^[[3~" delete-char
bindkey "^[[3^" kill-word
bindkey "^H" backward-kill-word
bindkey "^[Oc" forward-word
bindkey "^[Od" backward-word

#----------Alias---------#
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias pacs="sudo pacman -Syu"
alias pacr="sudo pacman -Rs"
alias mk="makepkg -si"
alias ll="ls -l --group-directories-first"
alias la="ls -la --group-directories-first"
alias vi="nvim"
alias ga="git add ."
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gs="git status"
alias gr="git reset --hard && git clean -f"
alias linode="ssh root@172.104.156.171"
alias cp="cp -v"
alias ..="cd .."
alias mki="make && sudo make clean install"
alias lmr="sudo systemctl restart lightdm"
alias dwmcfg="vi ~/code/dwm//config.h"
alias dwmmk="cd ~/code/dwm/dwm && make && sudo make clean install" 
alias shrtct="vi ~/.config/sxhkd/sxhkdrc"
alias systemctl="sudo systemctl"
alias gparted="sudo gparted"
#----------END-----------#

pfetch

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
