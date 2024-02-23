# dotfiles
My dotfiles for zsh, nvim, etc.
## Screenshots
![image](https://github.com/rrreydan/dotfiles/assets/85556643/a751824d-0816-4959-9a35-b48a7496f058)
![image](https://github.com/rrreydan/dotfiles/assets/85556643/0b66bd0a-97aa-41f7-9a8b-e2547270d5b5)
## Setup
### ZSH
1. Install **Oh My ZSH**: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` 
2. Install **powerlevel10k**: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
3. Install the necessary plugins:
	- **autosuggesions plugin**: `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
	- **zsh-autocomplete plugin**: `git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`
4. Install **nvm**: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash`
### Neovim
1. Install auxiliary utilities for *telescope*: `sudo pacman -S grep ripgrep fd`
2. Install the necessary language servers ([server_configurations.md](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md))
3. Install **tree-sitter-cli**: `npm i -g tree-sitter-cli`
### Tmux
Install **tpm**: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
