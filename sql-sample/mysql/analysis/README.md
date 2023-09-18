# 解析関数
データの解析に利用される、便利機能たち

## ウィンドウ関数

ウィンドウ関数を使用することで、特定のウィンドウ（範囲）内の行に対して計算を実行し、結果をクエリの結果セットに含めることができる。

例1: ordersテーブルから顧客ごとに注文の合計金額を計算し、order_dateの順に計算するクエリ

```
SELECT
    customer_id, order_date, order_amount,
    SUM(order_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM
    orders;
```

- over句

## ランキング関数
- rank
- desc_rank
- row_number