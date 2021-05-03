# wireguard vpn servece turn on and off
#alias au_vpn_start='sudo systemctl start wg-quick@au-vpn.service'

#openVPN connections
ovpn_start () {
    openvpn3 session-start --config $1.ovpn
}
ovpn_end () {
    openvpn3 session-manage --disconnect --config $1.ovpn
}

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ~='cd ~'				    # Switch to home dir
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias edit='code'                           # edit: Opens any file in Atom editor
alias c='clear'				    # Easy way to cleate terminal
zipf () { zip -r "$1".zip "$1" ; }          # zipf: To create a ZIP archive of a folder

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
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
        *)     echo "'$1' cannot be extracted via extract()"
            esac
        else
            echo "'$1' is not a valid file"
        fi
}
