
### 環境調査
ip addr show # ip addressの調査
ip -l # ネットワークデバイスの一覧表示
ip route show #表示　ルーティングテーブルのエントリ情報

### ping: インターネット層のチェック"
ping -c 5 google.com # 5回チェック

### ss: ポートの確認
ss

### traceroute: 経路のチェック
traceroute -n -T google.com # 名前解決しない & TCP通信
# もしくは、tracepath

### tcpdump: パケットの閲覧
tcpdump -c 5 port 80 #80番ポートをつかうパケット５つ


