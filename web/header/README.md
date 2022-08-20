# header
以下の種類がある。
- request header
- response header
- representation header (entity header)

## リクエストヘッダー
リクエスト時のヘッダー。
https://developer.mozilla.org/ja/docs/Glossary/Request_header

| name | content | 
| --- | --- |
| Host | ホスト |
| User-Agent | ユーザーエージェント |
| Referer | どのぺーじからやってきたか |
| Cookie | cookie |

### Accept系
- Accept : クライアントが処理できるコンテンツタイプを MIME タイプで伝える
- Accept-language：どの言語を処理できるか伝える
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

## CORS
CORS (オリジン間リソース共有、 Cross-Origin Resource Sharing) 。
ブラウザがオリジンをまたいだリクエストのレスポンスに対して、FEのＪＳがアクセスすることを許可するかブロックするかを決める。
同一元セキュリティポリシーでは、デフォルトでオリジン間のアクセスを禁止しており、これを許可するには実装が必要。

例えば、fe.example.comで動くjsから、api.example.comに直接リクエストを送りたい場合などに問題が発生する。
対処方法として、api.example.comが返すレスポンスヘッダーに、
`access-control-allow-origin: fe.example.com` を追加する。具体的なドメイン名だけでなく、`*(ワイルドカード)`も使える。



