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

