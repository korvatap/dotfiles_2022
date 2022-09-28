# dotfiles_2022

Used [GNU Stow](https://www.gnu.org/software/stow/) to manage dotfiles.

## Example how to install
The following flow will show how where to clone the files and how to use stow

### Clone with Git
Execute `git clone git@github.com:korvatap/dotfiles_2022.git ~/.dotfiles

### Using Stow to install nvim files
Execute `stow nvim`

## Nvim
- Package manager: [packer](https://github.com/wbthomason/packer.nvim#quickstart)
- After installing the package manager you might need to uncomment rows in the init.lua in order to get the plugins first installed then you can uncomment them back
