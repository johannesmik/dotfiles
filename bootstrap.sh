#!/usr/bin/env bash

git pull origin master;

cd "$(dirname "${BASH_SOURCE}")";

function sync_files() {
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This could overwrite existing dotfiles in your home directory. Proceed? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sync_files;
	fi;
fi;
unset sync_files;
