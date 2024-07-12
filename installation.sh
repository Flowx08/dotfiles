apt -y update
apt -y install build-essential
apt -y install gcc
apt -y install git
apt -y install vim
apt -y install htop
apt -y install neovim
apt -y install alacritty
apt -y install cmake
apt -y install clang
apt -y install clang-format
apt -y install clangd
apt -y install curl
apt -y install zsh

# i3
# NOTE: need to install FiraCode Nerd Font
apt -y install i3
apt -y install feh
apt -y install picom
git clone https://github.com/Flowx08/dotfiles.git .
sudo mkdir .config/i3/
cp dotfiles/i3config .config/i3/config
sudo mkdir .config/picom/
cp dotfiles/picom.conf .config/picom/

# conky
apt -y install lm-sensors
cp dotfiles/conkyrc .conkyrc
sudo ln -sr dotfiles/conky-i3bar /usr/bin/conky-i3bar

# alacritty terminal
sudo mkdir .config/alacritty
sudo cp dotfiles/alacritty.toml .config/alacritty/

# nvim
apt -y install fzf
apt -y install ripgrep
git clone https://github.com/Flowx08/neovim_config.git .config/nvim
sudo chmod -R 777 ./config/nvim
sudo mkdir /root/.config
sudo ln -s .config/nvim /root/.config/nvim

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp dotfiles/zshrc .zshrc

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
sudo ln -rs /usr/local/bin/lazygit /usr/local/bin/lg
