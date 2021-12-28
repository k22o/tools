# ディレクトリ構成
- src: tsファイル
- dist: 変換後のjsファイル

# コンパイル方法
## tscを利用したコンパイル
```
tsc hoge.ts
```

## gulpを利用したコンパイル
- 設定はしてあるので、`gulp` でOK。
- tsconfig.jsonを読み込んで、gulpを実行している


# install
以下で、typescriptの環境をinstall

グローバルにインストール
```
$ npm install -g typescript # インストールしていないなら実行
$ tsc --version
```

gulpの構築は以下
```
$ npm install -g gulp-cli # インストールしていないなら実行
$ gulp --version
$ npm install typescript gulp gulp-typescript --save-dev
```