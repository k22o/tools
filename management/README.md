# マネジメント

## サービスレベル

[別ファイル参照](../service-level.md)


## BCP (Business Continuity Plan)
大火災や大型台風・震災などの自然災害、テロなどの緊急事態下で事業の継続または早期に復旧するための手段や方法を決めておく計画。
以下のような指標を定義することがある。

- **RPO (Recovery Point Objective, 目標復旧時点)**: どの時点のデータを復旧させるか
- **RTO (Recovery Time Objective, 目標復旧時間)**: 復旧までにかかる時間
- **RLO (Revovery Level Objective, 目標復旧レベル)**: 平時に比べてどのレベルまで復旧させるか


## 障害メトリクス

- **MTBF (Mean Time Between Failures, 平均故障間隔)**: 故障するまでの時間
- **MTTR (Mean Time Through Repair, 平均復旧時間)**: 故障してからシステムが復旧するまでの時間
- **MTRS (Mean Time to Restore Serivce, 平均サービス復旧時間)**: 故障してからシステムが復旧しサービスが使えるようになるまでの時間
- **MTBSI (Mean Time Between Sytem Incident, 平均システムインシデント間隔)**: 一度故障してから次に故障するまでの時間。MTTR + MTRS