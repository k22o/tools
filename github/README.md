# github関連

## ghコマンド

インストールの後、、、

```
gh auth login
```


## fork元からのpull
### 手順
1. remoteリポジトリ”upstream”としてfork元を登録する
2. 登録できたか確認する
3. pullする

```
$ git remote add upstream hoge.git
$ git remote -v
$ git pull upstream master
```

## マージの種類
- https://qiita.com/ko-he-8/items/94e872f2154829c868df

## commit-messageの書き方

- https://qiita.com/itosho/items/9565c6ad2ffc24c09364
- https://gitmoji.dev/

## PR template 
.github > pull_request_template.md

## github actions 
.github > workflows

## githooks

(githubじゃないけど)

デフォルトだと参照先が違うので、以下で変更する。

```
git config core.hooksPath .githooks
// デフォルトに戻す場合 -> git config core.hooksPath .git/hooks 
```

そのあと、ファイルの実行権限を付与する

```
chmod -R +x .githooks/
```