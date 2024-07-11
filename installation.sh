apt -y install git
apt -y install vim
apt -y install htop
apt -y install neovim
apt -y install alacritty
apt -y install cmake

# i3
apt -y install i3
apt -y install feh
apt -y install xcompmgr
git clone https://github.com/Flowx08/dotfiles.git .
sudo mkdir .config/i3/
cp dotfiles/i3config .config/i3/config

# conky
apt -y install lm-sensors
cp dotfiles/conkyrc .conkyrc
sudo ln -sr dotfiles/conky-i3bar /usr/bin/conky-i3bar

# alacritty
sudo mkdir .config/alacritty
sudo cp dotfiles/alacritty.toml .config/alacritty/

# nvim
apt -y install fzf
apt -y install ripgrep
git clone https://github.com/Flowx08/neovim_config.git .config/nvim
sudo chmod -R 777 ./config/nvim
sudo mkdir /root/.config
sudo ln -s .config/nvim /root/.config/nvim
