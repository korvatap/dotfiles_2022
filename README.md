# dotfiles_2022

Used [GNU Stow](https://www.gnu.org/software/stow/) to manage dotfiles.

## Example how to install
The following flow will show how where to clone the files and how to use stow

### Clone with Git
The files should be clone to a folder one level from home e.g `~/.dotfiles` in order to use the stow easily
Execute `git clone git@github.com:korvatap/dotfiles_2022.git ~/.dotfiles` to clone files

### Using Stow to install nvim files
Navigate to `dotfiles` folder
Execute `stow nvim`. This will create symlinks from inside the nvim folder to $HOME.

## Nvim
- Install Package manager: [packer](https://github.com/wbthomason/packer.nvim#quickstart)
- Execute `PackerSync` to install all packages

### Checkhealth
You might want to run :checkhealth on the first run and make sure everything is showing OK

### Treesitter
You need to install C compiler and libstdc++ library.
See here: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

### Windows
1. Install [winget](https://github.com/microsoft/winget-cli/releases)
2. Install [scoop](https://scoop.sh/)
3. Install [chocolatey](https://chocolatey.org/install#individual)
4. Install Windows Terminal with winget
  - winget search terminal
  - winget install <ID OF Windows Terminal>
5. Install [zig](https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager)
6. Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
7. Install [fzf](https://github.com/junegunn/fzf#windows)
8. Install cmake
  - winget install kitware.cmake

#### Fonts
Found these amazing fonts: [SF-Mono-Nerd](https://github.com/epk/SF-Mono-Nerd-Font)
Download as zip and unzip them and select all and install
