# Colours
# 256 color chart - https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

PS1="\[$(tput setaf 166)\]\u";	# orange user
PS1+="\[$(tput setaf 228)\]@\h";	# yellow host
PS1+=" \[$(tput setaf 71)\]\W ->";	# green working directory
PS1+="\[ $(tput sgr0)\]"	# reset colours
export PS1;

# Welcome
echo -e "Kernel Information: " `uname -smr`
echo -e "${COLOR_BROWN}`bash --version`"
echo -ne "${COLOR_GRAY}Uptime: "; uptime
echo -ne "${COLOR_GRAY}Server time is: "; date

# Show/Hide system files for Sierra
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'