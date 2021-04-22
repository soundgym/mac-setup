#!/usr/bin/env bash

# Install brew
if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Get password for sudo
read -r -s -p "[sudo] sudo password for $(whoami):" pass

# Get install environment
read -r -p "Input install env(front/back):  " env

# Bundle brewfile
brew bundle --file="../brewfiles/$env.brewfile"

# Remove isolation
echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Docker.app
echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Figma.app
echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Slack.app
echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Notion.app

# Inject zsh profile
cat ./zsh/.zshrc >> ~/.zshrc

# Greeting
printf '\n\n🎉 Welcome to SOUNDGYM\n'