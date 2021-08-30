# egodsk's Dotfiles

...with heavy inspiration from Dries Vints dotfiles

## A Fresh macOS Setup

These instructions are for when you've already set up your dotfiles. If you want to get started with your own dotfiles you can [find instructions below](#your-own-dotfiles).

### Installing macOS cleanly

After going to our checklist above and making sure you backed everything up, we're going to cleanly install macOS with the latest release. Follow [this article](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version.

### Setting up your Mac

If you did all of the above you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version & Install Xcode Command line tools `xcode-select --install`
2. Setup ssh keys for accessing repositories
3. Clone this repo to `~/.dotfiles`
4. Install oh-my-zsh: `curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
5. Run `install.sh` to start the installation
6. Run the .macos: `source .macos`
7. Restart your computer to finalize the process

## Thanks To...

Dries Vints [dotfiles](https://github.com/driesvints/dotfiles) project.
