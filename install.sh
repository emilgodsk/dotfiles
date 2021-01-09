#!/bin/sh

echo "Setting up your Mac..."

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the EditorConfig config file to the home directory
ln -s $HOME/.dotfiles/.editorconfig $HOME/.editorconfig

# Symlink the git ignore file to the home directory
ln -s $HOME/.dotfiles/.gitignore $HOME/.gitignore

# Symlink the git config file to the home directory
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Install nvm
/bin/bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash"
