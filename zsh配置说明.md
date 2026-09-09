1. 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

手动更新omz
omz update

2. 安装zsh插件
brew install zsh-autosuggestions
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting.zsh
brew install zsh-completions
根据提示设置 .zshrc

3. 安装powerlevel10k主题
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
