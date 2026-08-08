# PC setup

## 言語

- Python
- node / npm
- Java
- Typescript 

## ソフトウェア

- windows
  - git
  - SSL2
- mac
  - homebrew
  - gasmask
- vscode
  - mysql
  - xml (redhat)
  - prettier
  - path intellisense
  - live server
  - live sass compiler
  - gitlens
  - gitgraph
  - vscode-icons
  - code spell checker
- claude code
- docker desktop
- intelliJ
- chrome
  - json formatter
  - ~mod header~ セキュリティリスク
- mySQL workbench
- ghコマンド

## 開発関係ないやつ

- slack
- LINE
- spotify
- steam
- virus buster

## bashrc

zshがつかえるなら、oh-my-zshとかでいいんだろうな

https://qiita.com/lemtosh469/items/334ff76366e054a3a3aa

``` shell
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1='\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
else
    PS1='\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
fi
```

## nodeの設定

サプライチェーン攻撃対策に。

```
$ npm config set min-release-age 7 --global
```

## 