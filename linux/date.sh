# date コマンド
## 日にちの足し引き
date -d '2 months'
date -d '2021-01-01 1 day ago' +'%Y-%m-%d-%a'

## タイムゾーン
TZ= date #UTC (GMTに設定)
TZ=-9 date 
TZ='America/New_York' date 

# dateutils コマンド (<- sudo apt install)
dateutils.ddiff 2022-01-01 2022-01-07 # 日付の差
dateutils.dseq 2022-01-01 2022-01-07 # 日付の列挙
dateutils.dadd 2022-01-01 -5 # 日付の加減
dateutils.dround 2022-01-01 +Sun #直後の該当曜日
dateutils.dround 2022-01-01 -- -Sun #直前の該当曜日
