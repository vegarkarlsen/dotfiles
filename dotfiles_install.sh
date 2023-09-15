#!/bin/bash

# path to this file

script_path="$(realpath "$0")"
dir_path="$(dirname $script_path)"

backup_file(){
	file="$1"
	file_name=$(basename "$file")

	if [ -e "$dir_path/backup" ]; then
		:
	else
		mkdir "$dir_path/backup"
		echo "making folder $dir_path/backup"
	fi
	cp $file "$dir_path/backup/$file_name.backup"
	echo "copying $file to $dir_path/backup/$file_name.backup"
}

# confirmation function
download_file(){
	# get variables
	file="$1"
	file_sync="$2"

	#file exists
	if [ -e "$file" ]; then
		# check useres response
		read -p "the file $file allready exists, do you want to overwrite? (y/n): " validate
		if [ "$validate" == "y" ] || [ "$validate" == "Y" ]; then
			echo "Action confirmed. Continuing..."
			# backup file
			backup_file $file
			# sync files
			ln -s "$file_sync" "$file" -f
			echo "$file syncronized with $file_sync"
		# user respond no to overwrite
		else
			echo "Action cancled. Exiting..."
		fi
	# file does not exists
	else
		ln -s "$file_sync" "$file"
		echo "creating file $file and syncronizing with $file_sync"
	fi
}
#download_file "test2"  "test1"
#backup_folder test1

download_file "$HOME/.aliases" "$dir_path/aliases"
download_file "$HOME/.muttrc" "$dir_path/muttrc"
download_file "$HOME/.tmux.conf" "$dir_path/tmux.conf"
# download_file "$HOME/.vimrc" "$dir_path/vimrc"
download_file "$HOME/.zshrc" "$dir_path/zshrc"
download_file "$HOME/.p10k.zsh" "$dir_path/p10k.zsh"


