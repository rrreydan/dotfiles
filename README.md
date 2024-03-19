# dotfiles
My dotfiles for zsh, nvim, etc.
## Screenshots
![image](https://github.com/rrreydan/dotfiles/assets/85556643/204d06f7-5cac-483b-ba0d-6693c24b2399)
![image](https://github.com/rrreydan/dotfiles/assets/85556643/e4d80244-d19f-48cd-903e-2f6fb6b2a490)
![image](https://github.com/rrreydan/dotfiles/assets/85556643/5ca73296-1750-4709-a4a7-0447f932a9ec)
## Setup
### ZSH
1. Install **Oh My ZSH**: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` 
2. Install **powerlevel10k**: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
3. Install the necessary plugins:
	- **autosuggesions plugin**: `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
	- **zsh-autocomplete plugin**: `git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`
### Neovim
1. Install auxiliary utilities for *telescope*: `sudo pacman -S grep ripgrep fd`
2. Install the necessary language servers ([server_configurations.md](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md))
3. Install **tree-sitter-cli**: `npm i -g tree-sitter-cli`
### Tmux
Install **tpm**: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
