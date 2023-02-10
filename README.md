# Neovimの設定

## Quickstart

### 1.最新版の Neovim をインストールする

>MacにNeovimをインストールする

```shell
brew install neovim --HEAD

# 更新時はこれだけで OK
brew reinstall neovim
```

### 2.packer.nvim のインストールと最低限の設定

```shell

# opt ディレクトリに packer.nvim をクローン
git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

# 必要なフォルダの作成
mkdir ~/.config/
cd ~/.config/

# Gitより設定をクローンする
git clone https://github.com/Ue555/nvim.git
```
