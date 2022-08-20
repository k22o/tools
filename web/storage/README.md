# webストレージ
1. [localStorage](#localStorage)
1. [sessionStorage](#sessionStorage)
1. [indexedDB](#indexedDB)
1. [cookie](#cookie)

## localStorage
- webブラウザ上にデータを保存する
- セッションなどを跨いでも保持される
- 永続的な保持は、バグが生じる場合もあるので注意
- 気密性の高い情報の保持には不向き ([reference](https://techracho.bpsinc.jp/hachi8833/2019_10_09/80851 )

## sessionStorage
- localStorageとほぼ同様
- こちらは、セッションを跨いでは保持されない

## indexedDB
- localStorageなどよりも、より高級なkey-valueストレージ (DB) を提供する。
    - 大量のデータ、トランザクション、インデックス機能など

## cookie
- 通信時にcookieに変数を入れて送る
- "id=1;max-age=500;"などのように、変数は`=`で連結されている
- chromeのdevToolであれば、applicationタブから確認可能
- 例として、以下のような属性を設定可能。特に下3つはセキュリティ上大事。

| 属性名 | 値の例 | 説明 | 
| --- | --- | --- |
| Expires | Wdy, DD-Mon-YYYY HH:MM:SS GMT | 有効期限 |
| Domain | example.com | cookieを送信するドメイン |
| Secure | (値なし) | https時のみ送信許可 |
| HttpOnly | (値なし) | jsの操作を無効化し、サーバーでのみ操作可能に。XSS防止。 |
| SameSite | strict,lax,none | 他サイトへのcookie送信の制限。CSRF防止。|



