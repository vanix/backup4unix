#$FreeBSD: src/share/skel/dot.cshrc,v 1.10.2.3 2001/08/01 17:15:46 obrien Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias ls	ls -GF
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias ff	"find . -name '*\!{*}*' -exec ls -la {} \;"
alias mark	'set \!:1=$cwd'
alias vi 	'env LC_CTYPE=zh_TW.UTF-8 vim'
#alias vi 	'env LC_CTYPE=en_US.ISO8859-1 vim'
alias screen 	'env LC_CTYPE=zh_TW.UTF-8 screen'
#alias less 	'env LC_ALL=zh_TW.UTF-8 less'
alias irssi	'env LC_ALL=zh_TW.UTF-8 irssi'
alias dt	dict
alias g		g++
# alias ls	ls -G
# alias mutt     'env LC_CTYPE=zh_TW.Big5 mutt'
# A righteous umask
umask 22

set autolist
setenv LSCOLORS Cxfxcxdxbxegedabagacad

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin /usr/local/jdk1.1.8/bin $HOME/bin)

if ( ! $?WINDOW ) then
	set prompt = "%{[1;34m%}%#%{[0m%} %{[1;33m%}%n@%m%{[0m%} %~> "
else
	set prompt = "%{[1;34m%}%#%{[0m%} %{[4m%}%n@%m:$WINDOW%{[0m%} %~> "
endif
set promptchars = '$#'

setenv  EDITOR  /usr/local/bin/vim
setenv  VISUAL  /usr/local/bin/vim
setenv	PAGER	less
setenv	BLOCKSIZE	K

#setenv	LANG	zh_TW.Big5
setenv	LANG	zh_TW.UTF-8
setenv	LC_CTYPE	zh_TW.UTF-8
#setenv	LC_CTYPE	en_US.ISO8859-1
setenv	LC_ALL	zh_TW.UTF-8
setenv	LESSCHARSET	utf-8

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

##
# Your previous /Users/vanix/.cshrc file was backed up as /Users/vanix/.cshrc.macports-saved_2009-11-18_at_15:18:10
##

# MacPorts Installer addition on 2009-11-18_at_15:18:10: adding an appropriate PATH variable for use with MacPorts.
setenv PATH /opt/local/bin:/opt/local/sbin:$PATH
setenv PATH /Developer/usr/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#Java on FreeBSD
setenv JAVA_HOME /usr/local/jdk1.6.0/jre
setenv CLASSPATH $JAVA_HOME/lib
setenv PATH $JAVA_HOME/bin:$PATH

