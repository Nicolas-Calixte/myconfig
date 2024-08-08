#!/bin/sh

	# DECLARE A FILE TO SOURCE INSIDE ZDOTDIR
function zsh_add_file() {
	[ -f $ZDOTDIR/$1 ] && source "$ZDOTDIR/$1" 
}
	# INSTALL A ZSH PLUGIN
function zsh_add_plugin() {
	PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
	if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ] ; then

		zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
		zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
	else
		git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME" && \
		zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
		zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
	fi
}

	# LOOP TO SOURCE EACH ZSH PLUGIN FOR EACH NEW SESSION
for i in `ls $ZDOTDIR/plugins`;
do
          source "$ZDOTDIR/plugins/$i/"*".plugin.zsh" || \
          source "$ZDOTDIR/plugins/$i/"*".zsh"  ;
done 

	# REMAP CAPSLOCK TO ESCAPE
setxkbmap -option caps:swapescape

	# SHOW SYSTEMD LOGS MORE EASILY
function showlogs() {
	journalctl -u $1 -f -n 50 | less
}


