# コンピューターアーキテクチャ

## メモリの分類

- **ROM** (Read-Only Memory): 基本動作は読み込みのみ
  - **mask ROM**: LSI設計時に中身が決まり、ユーザの書き込み不可
  - **PROM** (programmable ROM)
    - **ヒューズROM**: 1度だけ書き込み可
    - **EPROM** (erasable PROM): 何度でもユーザの書き込み可能
      - EEPROM: 電気的に書き込みする
      - フラッシュめもり　: 電気的に書き込みする。高速。 
- **RAM** (Random Access Memory): 基本動作は読み込みと書き込みのみ
  - **SRAM** (static RAM): flip-flop。リフレッシュ不要。
  - **DRAM** (dynamic RAM): コンデンサ。リフレッシュ必要。


## パイプライン

全体の作業を工程ごとのに分解し、各工程の処理量を向上させる仕組みをパイプラインと呼ぶ。
パイプラインの阻害要因には、いくつかある。

- **オーバーヘッド**: 命令パイプラインの仕組みのせいで余分に発生してしまった余分な時間のこと
  - 要因1: 最も時間のかかるステージでの処理時間次第で、全体のスループットが決まる
  - 要因2: パイプラインレジスタによる
- **ハザード**: 命令をクロックごとにパイプライン動作させられないこと
  - **構造ハザード**: 計算資源の競合による
  - **データハザード**: データの依存関係による
  - **制御ハザード**: 分岐命令の依存関係による

以下のような方法でハザードは解消する (名前だけ)。

- フォワーディング
- 遅延分岐
- 分岐予測
- 命令スケジューリング

## キャッシュ

キャッシュはメモリの最上位、高速小容量メモリである。  
メインメモリを見かけ上高速化するための仕組み。

### キャッシュの種類

- **write through 方式**
  - 演算結果をキャッシュにもメインメモリにも書き出す
- **write back 方式**
  - 演算結果をキャッシュだけに書き出し、キャッシュから追い出されるときに初めてメインメモリに書き出す

### キャッシュミス

読み書きの対象となるラインがキャッシュにない場合を、キャッシュミスと呼ぶ。原因は3つあり、「三つのC」と呼ばれる

- 初期参照ミス (compulsory): キャッシュラインへの最初のアクセス
- 競合性ミス (conflict): 同じindexの異なるキャッシュラインへのアクセス
- 容量性ミス (capacity): キャッシュ容量のオーバ

## 仮想記憶

メインメモリを大きく見せるための仕組み。  
メインメモリには実行に必要な情報のみを入れておき、その他の情報は大容量の外部記憶装置に入れて必要に応じてやり取りする。  

仮想記憶によって、

1. メインメモリより大きな容量があるものとしてプログラムを書ける
1. 複数のプログラムが1つの物理記憶を安全に分かち合って使える

特徴的なワードのみ記載する

- ページング / スワッピング
  - 仮想記憶の方式の一つ。メモリ領域をページと呼ばれる一定の大きさの領域に分割し、物理アドレスとは別に仮想アドレスを割り当てて管理する方式。
- ページフォールト (page fault)
  - アクセス時に仮想記憶上にデータが存在しない場合に発生する割込み処理
- スワップ・イン / ページ・イン
  - ページングにおいて、ストレージ上に退避した内容が必要になり、物理メモリに書き戻す操作のこと
- スワップ・アウト / スワップ・イン
  - 不要なページをストレージに書き出して物理メモリから消去するこ
- TLB (transition look-aside buffer)

## その他

- 省エネ技術
  - **パワーゲーティング**
    - 動作していないブロックへの電力供給を遮断する
  - **クロックゲーティング**
    - 動作していないブロックへのクロック供給を遮断する
- 命令
  - **SIMD** (Single Instruction Multiple Data)
    - 1つの命令で複数のデータを処理する命令方式
    - 計算効率は高い
  - **MIMD** (Multiple Instruction Multiple Data)
    - 複数の命令を並列実行する
    - 柔軟性が高い

## 参考文献

- コンピュータアーキテクチャ (コロナ社)
- web記事
