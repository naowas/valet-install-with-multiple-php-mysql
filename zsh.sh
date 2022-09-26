sudo apt-get update
sudo apt-get install zsh powerline fonts-powerline zsh-syntax-highlighting
sudo usermod -s /usr/bin/zsh $(whoami)
reboot
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install fonts for powerlevel10k
https://github.com/romkatv/powerlevel10k/blob/master/font.md

#Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
vim .zshrc

#Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
