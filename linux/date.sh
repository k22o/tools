# date コマンド
## 日にちの足し引き
date -d '2 months'
date -d '1 day ago' +%Y%m%d

## タイムゾーン
TZ= date #UTC (GMTに設定)
TZ='America/New_York' date 

# dateutils コマンド (<- sudo apt install)
dateutils.ddiff 2022-01-01 2022-01-07 # 日付の差
dateutils.dseq 2022-01-01 2022-01-07 # 日付の列挙
dateutils.dadd 2022-01-01 -5 # 日付の加減

