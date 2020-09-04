#scratch# Oh-My-Zsh
ZSH=/home/azrael/.oh-my-zsh
ZSH_THEME="bira"    #kardan agnoster af-magic bira clean candy  terminalparty takashiyoshida random

#POWERLINE_RIGHT_A="date"
#POWERLINE_RIGHT_A="exit-status"
#POWERLINE_FULL_CURRENT_PATH="true"
#POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{cyan}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_RIGHT_A_COLOR_FRONT="black"
POWERLINE_RIGHT_A_COLOR_BACK="red"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Default Programs
#export NMON=cmknt
export EDITOR="gvim"
export PAGER="less"
export BROWSER="firefox"
export BROWSERCLI="w3m"
export MOVPLAY="mpv"
export PICVIEW="feh"
export SNDPLAY="mpv"
export TERMINAL="urxvt"
export PULSE_LATENCY_MSEC=60
export TERM="xterm-256color"

# File Extensions
for ext in html org php com net no;    do alias -s $ext=$BROWSER; done
for ext in txt tex py PKGBUILD;        do alias -s $ext=$EDITOR; done
for ext in png jpg gif;            do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv;        do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg;            do alias -s $ext=$SNDPLAY; done

########################################################
######################## ALIASES ####################### 
########################################################
alias cdv='cd ~/.config/variety/Downloaded/Desktoppr/'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias home='cd /home/azrael/'
alias eV='vim ~/.vimrc'
alias eI='vim ~/.config/i3/config'
alias eB='vim ~/.bashrc'
alias eZ='vim ~/.zshrc'
alias eX='vim ~/.Xresources'
alias pac='sudo pacman -Syyu'
alias Y='yay'
alias Net='sudo systemctl restart NetworkManager'
alias Dhc='sudo systemctl restart dhcpcd'
alias Rel='sudo systemctl daemon-reload'
alias ps='sudo pacman -S'
alias hog='sudo nethogs'
alias Map='sudo nmap 192.168.1.1/24'
alias Cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias Optimus='sudo pacman-optimize'
alias la='ls -lrta'
alias XTR='xrdb -merge ~/.Xresources'
alias Sys='systemd-analyze'
alias ble='sudo bleachbit'
alias Reb='sudo reboot'
alias Ya='yay -S'
alias Bash='chsh -s $(which /bin/bash)'
alias BSH='source ~/.bashrc'
alias Tc='sudo netstat -tc'
alias v='vim'
alias eT='vim ~/.tmux.conf'
alias eC='vim ~/.config/compton.conf'
alias Ter='vim ~/.config/termite/config'
alias Hdd='sudo hddtemp /dev/sda'
alias Sus='systemctl suspend'
alias borrar='sudo pacman -Rnsc'
alias Z='source ~/.zshrc'
alias music='mpd && ncmpcpp'
alias ll='ls -l'
alias l='ls'
alias C='clear'
alias se='sudo vim'
alias e='vim'
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias k='exit'
alias te='trash-empty'
alias tl='trash-list'
alias del='trash-put'
alias tr='trash-rm'
alias lD='ls ~/Descargas'
alias D='cd ~/Descargas'
alias tetris='mame atetrisa.zip -rompath ~/.mame/roms'
alias 1942='mame 1942.zip -rompath ~/.mame/roms'
alias bubble='mame bublboblr.zip -rompath ~/.mame/roms'
alias puzzle='mame pbobble.zip -rompath ~/.mame/roms'
alias joe='mame kncljoea.zip -rompath ~/.mame/roms'
alias Pacman='mame pacmanbla.zip -rompath ~/.mame/roms'
alias empire='mame empcityu.zip -rompath ~/.mame/roms'
alias wifi='sudo systemctl start NetworkManager iptables'
alias macchange='sudo ifconfig enp3s0 down && sudo macchanger -r enp3s0 && sudo ifconfig enp3s0 up'
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT1"
###########################################################
########################### ZSH ###########################
###########################################################

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
#KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward

###########################################################
######################### FFMPEG ########################## 
###########################################################

ffx_MONO="1"		# mono
ffx_DUAL="2"		# dual channel
ffx_HW="hw:1,0" 	# alsa; run 'cat /proc/asound/pcm' to change to the correct numbers
ffx_PULSE="pulse" 	# pulseaudio; might have to install pavucontrol to change volume
ffx_FPS="30"		# frame per seconds
#ffx_WIN_FULL="2560x1440"	# record fullscreen
ffx_WIN_FULL="1366x768"	# record fullscreen
ffx_AUDIO="pcm_s16le"	# audio codec
ffx_VIDEO="libx264"	# video codec
ffx_PRESET="ultrafast"	# preset error? run 'x264 -h' replace with fast,superfast, slow ..etc
ffx_CRF="0"
ffx_THREADS="0"
ffx_THREAD_QUEUE_SIZE="512"
ffx_SCALE="scale=1366x768"	# scale resolution, no black bars on sides of video on youtube
ffx_DIR="$HOME/Screencasts/"
ffx_OUTPUT=$ffx_DIR/$(date +%d-%b-%r)-screencast.mkv
ffx_OUTPUT_FINAL=~/Screencasts/screencast.mp4
# Note: -vf is optional delete if you want, -y is to overwrite existing file

## Concatinate (combine) two or more videos
#ffmpeg -i "concat:input1.avi|input2.avi..." -c copy output.avi

FF-full() { 
	ffmpeg \
#	-thread_queue_size 2048 \
	-f alsa \
	-ac $ffx_MONO \
	-i $ffx_PULSE \
#	-thread_queue_size 512 \
	-f x11grab \
	-r $ffx_FPS \
	-s $ffx_WIN_FULL \
	-i :0.0 \
	-acodec $ffx_AUDIO \
	-vcodec $ffx_VIDEO \
	-preset $ffx_PRESET \
	-crf $ffx_CRF \
	-threads $ffx_THREADS \
	-y $ffx_OUTPUT \
	$ffx_OUTPUT \
#	-vf $ffx_SCALE \
	}

# capture single window, use mouse cursor to select window you want to record
FF-window() { 
	ffx_INFO=$(xwininfo -frame)
    ffmpeg \
    -f alsa \
    -ac $ffx_MONO \
	-i $ffx_PULSE \
    -f x11grab \
    -r $ffx_FPS \
	-s $(echo $ffx_INFO \
    | grep -oEe 'geometry [0-9]+x[0-9]+'\
	| grep -oEe '[0-9]+x[0-9]+') \
	-i :0.0+$(echo $ffx_INFO | grep \
    -oEe 'Corners:\s+\+[0-9]+\+[0-9]+' \
	| grep -oEe '[0-9]+\+[0-9]+' | sed \
    -e 's/\+/,/' ) \
	-acodec $ffx_AUDIO \
    -vcodec $ffx_VIDEO \
    -preset $ffx_PRESET \
    -crf $ffx_CRF \
    -threads $ffx_THREADS \
	-y $ffx_OUTPUT \
            }

FF-convert() {
    ffmpeg \
	-i $ffx_OUTPUT \
	-ar 22050 \
	-ab 32k \
	-strict -2 \
	 $ffx_OUTPUT_FINAL
	}

Convert2mp4() {
    ffmpeg \
	-i $1 \
	-ar 22050 \
	-ab 32k \
	-strict -2 \
	 output.mpeg
	}



plugins=(git archlinux vi-mode themes vim-interaction battery colorize extract tmux history history-substring-search zsh-autosuggestions colorize command-not-found colored-man-pages history-substring-search web-search copydir copyfile) 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/azrael/.oh-my-zsh/oh-my-zsh.sh

clear
#neofetch
#screenfetch
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
