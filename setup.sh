sudo apt-get update
sudo apt-get install gnome-tweaks qbittorrent htop flameshot vlc obs-studio zsh powerline fonts-powerline zsh-syntax-highlighting software-properties-common network-manager libnss3-tools jq xsel git-flow
sudo usermod -s /usr/bin/zsh $(whoami)
sudo reboot

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#set powerleve10k as default theme (choose any one of them)
#Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
vi .zshrc / gedit .zshrc / kate .zshrc / kwrite .zshrc


# Install fonts for powerlevel10k
https://github.com/romkatv/powerlevel10k/blob/master/font.md

# set MesloLGS as default font in termianl

sudo add-apt-repository ppa:ondrej/php
sudo apt-get install php7.2 php7.2-fpm 
sudo apt-get install php7.4 php7.4-fpm

curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php7.2 composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo php7.4 composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt install php7.2-cli php7.2-curl php7.2-mbstring php7.2-mcrypt php7.2-xml php7.2-zip php7.2-pdo-mysql php7.2-gd
sudo apt install php7.4-cli php7.4-curl php7.4-mbstring php7.4-mcrypt php7.4-xml php7.4-zip php7.4-pdo-mysql php7.4-gd

composer global require cpriego/valet-linux
echo "export PATH=$PATH:$HOME/.config/composer/vendor/bin" >> ~/.zshrc
source ~/.zshrc

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/nul

valet install
mkdir Sites
cd Sites
valet park
valet use 7.2
composer global update

sudo apt-get install mysql-server
sudo mysql_secure_installation

sudo mysql -u root -p
CREATE USER 'easytrax'@'localhost' IDENTIFIED BY 'easytrax1234';
ALTER USER 'easytrax'@'localhost' IDENTIFIED WITH mysql_native_password BY 'easytrax1234';
CREATE DATABASE easytrax_crm;
GRANT ALL ON easytrax_crm.* TO 'easytrax'@'localhost';
GRANT ALL ON *.* TO 'easytrax'@'localhost';
FLUSH PRIVILEGES;
exit;

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs

git config --global credential.helper store

