#### 环境安装

```shell
ssh-keygen -t rsa -C "dqli161@163.com"
git config --global user.name lidaqiang
git config --global user.email dqli161@163.com

#适用于go1.17
wget https://github.com/fullstorydev/grpcurl/releases/download/v1.7.0/grpcurl_1.7.0_linux_x86_64.tar.gz
tar -xvf grpcurl_1.7.0_linux_x86_64.tar.gz
mv grpcurl /usr/local/bin/

#安装neovim
wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv nvim-linux64 /usr/local/nvim
echo 'export PATH=$PATH:/usr/local/nvim/bin' >> ~/.bashrc
source ~/.bashrc

# 下载nvim配置文件
git clone git@github.com:dqli164/nvim.git ~/.config/nvim
# 安装node
<!-- wget https://nodejs.org/dist/v21.0.0/node-v21.0.0-linux-x64.tar.xz -->
<!-- tar -xvf node-v21.0.0-linux-x64  -->
<!-- mv node-v21.0.0-linux-x64 /usr/local/node -->
<!-- echo 'export PATH=$PATH:/usr/local/node/bin' >> ~/.bashrc -->
<!-- source ~/.bashrc -->

#安装gopls
go install golang.org/x/tools/gopls@v0.11.0

apt install ripgrep
apt install fd-find
# only on debian
ln -s $(which fdfind) /usr/local/bin/fd
```

### Nodejs环境搭建

Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions

### 安装

安装命令

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

配置环境变量及补全

```shell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

### 使用

```shell
# 安装最新版本的nodejs
nvim install node
# 指定版本
nvm install v20.10.0
# 列出可选择的nodejs版本
nvm ls-remote
# 运行node
nvm use node
# 运行并指定版本
nvm run node --version 

```


