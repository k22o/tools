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

- レスポンスには必ず `Content-Type` を明示的に設定する（推測に任せない）。文字コードも付与する: `Content-Type: text/html; charset=utf-8`
- 圧縮転送を行う場合は `Content-Encoding: gzip` または `br` を使い、あわせて `Vary: Accept-Encoding` を設定する（プロキシ/CDNでのキャッシュ誤配信を防ぐ）

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

- `Server`: レスポンスヘッダーに含まれ、Webサーバーの種類・バージョンを含む。可能な限り削除するか汎用的な値に上書きする
- `X-Powered-By`: フレームワーク情報が漏れるため削除する（例: Express, PHP）
- `Via`: リバースプロキシ経由の情報が追加される。外部公開時は除去を検討する。

## セキュリティ

| header | 推奨値 | 目的 |
| --- | --- | --- |
| Strict-Transport-Security | `max-age=31536000; includeSubDomains; preload` | HTTPでなくHTTPSを用いて通信するよう指示する（HSTS）。1年以上のmax-ageを推奨 |
| X-Content-Type-Options | `nosniff` | MIMEタイプのスニッフィングを抑止 |
| X-Frame-Options | `DENY`（埋め込み不要な場合） / `SAMEORIGIN` | iframeなどへの埋め込み可否を制御。クリックジャッキング対策。CSPの`frame-ancestors`で代替可 |
| Content-Security-Policy | サイトごとに設計 | XSS対策の中心。下記参照 |
| Referrer-Policy | `strict-origin-when-cross-origin` | 外部サイトへの遷移時にURLの情報漏洩を抑制 |
| Permissions-Policy | 必要な機能のみ許可 | camera, microphone, geolocationなど不要な機能を無効化 |

X-XSS-Protection（例: `X-XSS-Protection: 1; mode=block`）は非推奨（モダンブラウザは無視、または脆弱性の原因になるため）。CSPで代替する。

### Content-Security-Policy (CSP)

XSS対策に用いられる。まずは最小構成から始めて、違反状況を見ながら広げる。

```
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self' data:; object-src 'none'; base-uri 'self'; frame-ancestors 'none'
```

- `default-src 'self'`: 明示していないディレクティブのフォールバック
- `object-src 'none'`: Flash等のプラグイン経由の攻撃を遮断
- `'unsafe-inline'` / `'unsafe-eval'` は極力使わない。nonceかhashで対応する
- 導入初期は `Content-Security-Policy-Report-Only` で違反レポートのみ収集し、問題ないことを確認してから本適用に切り替える

## CORS

CORS (オリジン間リソース共有、 Cross-Origin Resource Sharing) 。
ブラウザがオリジンをまたいだリクエストのレスポンスの利用許可するかブロックするかを決める。サーバへのリクエスト自体は実行され、そのレスポンスを受け取る際に、利用するかを判断する。
同一オリジンポリシーでは、デフォルトでオリジン間のアクセスを禁止しており、これを許可するには実装が必要。

例えば、fe.example.comで動くjsから、api.example.comに直接リクエストを送りたい場合などに問題が発生する。
対処方法として、api.example.comが返すレスポンスヘッダーに、
`access-control-allow-origin: fe.example.com` を追加する。具体的なドメイン名だけでなく、`*(ワイルドカード)`も使える。

- `Access-Control-Allow-Origin`: `*` は避け、許可するオリジンを明示的に指定する
  - Cookie等の認証情報を送る場合（`credentials: include`）は `*` は使用不可。オリジンを1つずつ指定する
- `Access-Control-Allow-Credentials: true`: Cookieを使ったクロスオリジン通信を許可する場合のみ設定
- `Access-Control-Allow-Methods` / `Access-Control-Allow-Headers`: 必要なものだけを列挙し、ワイルドカードは避ける


## Cookie

| 属性 | 推奨値 | 目的 |
| --- | --- | --- |
| Secure | 必須 | HTTPS通信でのみ送信 |
| HttpOnly | 必須（JSから参照不要なCookie） | XSSによるCookie窃取を防止 |
| SameSite | `Lax`（既定）/ `Strict`（認証系） / `None; Secure`（クロスサイトで必要な場合のみ） | CSRF対策 |

## 実装チェックリスト

- [ ] HTTPS強制（Strict-Transport-Security）を設定したか
- [ ] Content-Security-Policyを設定し、`unsafe-inline`/`unsafe-eval`に依存していないか
- [ ] Cookieに`Secure` / `HttpOnly` / `SameSite`を設定したか
- [ ] CORSの許可オリジンをワイルドカード（`*`）にしていないか（認証情報を扱う場合は特に）
- [ ] 静的アセットとHTML/APIレスポンスでキャッシュ戦略（Cache-Control）を分けたか
- [ ] レスポンスの`Content-Type`を明示的に設定しているか
- [ ] `Server` / `X-Powered-By`など実装詳細を漏らすヘッダーを削除したか
