# header

## リクエストヘッダー

リクエスト時のヘッダー。
https://developer.mozilla.org/ja/docs/Glossary/Request_header

| name | content | 
| --- | --- |
| Host | ホスト |
| User-Agent | ユーザーエージェント |
| Referer | どのぺーじからやってきたか |
| Cookie | cookie |

## コンテンツネゴシエーションヘッダー

同じURIでさまざまな表現のリソースを提供するための仕組み

- Accept : クライアントが処理できるコンテンツタイプを MIME タイプで伝える
- Accept-language：どの言語を処理できるか伝える
- Accept-encoding : リクエストを圧縮する形式を指定する。gzip, compress, identityなど。指定した中から選んでレスポンスが返る
- If-*：リクエストを条件付きにする

## 表現 (representation) ヘッダー / entityヘッダー

HTTP メッセージの本文で送られる特定の表現を説明する。
リクエストにもレスポンスにも含まれるので、リクエスト/レスポンスヘッダーの一部と解釈されることもある。

| name | content | 
| --- | --- |
| Content-Length | message bodyの長さ |
| Content-Type | message body の種別 (後述) |
| Content-Language | message bodyの言語 |
| Content-Encoding | message bodyの圧縮の種別 |

### Content-Type

メディア種別を表すのに利用される。
MIMEタイプ (メディアタイプ) で表現される。
メディアタイプは、`タイプ/サブタイプ;引数=値` という形式。
| name | content | 
| --- | --- |
| text/plain | プレーンテキスト |
| text/css | css |
| text/html | html, phpも | 
| text/javascript | javascript |
| text/csv | csv |
| application/json | jsonファイル |
| application/xml | xmlファイル |

## cache関連

ブラウザでのキャッシュに関する設定。リクエストもレスポンスもある。

### cache-control

`Cache-Control: max-age=1000, private`

- max-age: 秒数を指定
- public: ブラウザでもプロキシサーバーでも許可
- private: ブラウザのみで許可 
- no-cache: キャッシュ不可

### その他

- expires: レスポンスが古くなる日時。今は普通はCache-Control

## 通信情報のヘッダー

これらは、セキュリティ的には見えないように消したほうがよいかも。

- Via : フォワード/リバースプロキシによって追加される。メッセージの途中経路の情報を表す
- Server : レスポンスヘッダーに含まれ、オリジンサーバーの情報

## セキュリティ

- X-Content-Type-Options: MIME タイプのスニッフィングを抑止。例: `X-Content-Type-Options: nosniff`
- X-Frame-Options: iframeなどの内部に表示するか 例: `X-Frame-Options: DENY` `X-Frame-Options: SAMEORIGIN`
- X-XSS-Protection: XSSを検出した際の動作を規定する 例: `X-XSS-Protection: 1; mode=block`
- Strict-Transport-Security: HTTPでなくHTTPSを用いて通信するよう指示する。HTTP ~ でHSTSと略される。

## CORS

CORS (オリジン間リソース共有、 Cross-Origin Resource Sharing) 。
ブラウザがオリジンをまたいだリクエストのレスポンスの利用許可するかブロックするかを決める。サーバへのリクエスト自体は実行され、そのレスポンスを受け取る際に、利用するかを判断する。
同一オリジンポリシーでは、デフォルトでオリジン間のアクセスを禁止しており、これを許可するには実装が必要。

例えば、fe.example.comで動くjsから、api.example.comに直接リクエストを送りたい場合などに問題が発生する。
対処方法として、api.example.comが返すレスポンスヘッダーに、
`access-control-allow-origin: fe.example.com` を追加する。具体的なドメイン名だけでなく、`*(ワイルドカード)`も使える。
