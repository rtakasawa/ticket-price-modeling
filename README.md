# ticket-price-modeling

## 内容
チケット料金モデリングに挑戦しました。\
※元ネタのURL：https://github.com/j5ik2o/ticket-price-modeling

## Rubyバージョン
ruby 2.6.5

## 実行方法（売上集計）
下記コマンドで、csvディレクトリ内の映画チケットの売上情報を読み取り、集計結果を出力します。\
`cd lib`\
`ruby manager.rb`

## クラス図
拡張性、単一責任を意識し、下記のとおり設計しました。

![ticket-price-modeling_クラス図](https://user-images.githubusercontent.com/60159339/105629974-7fa54480-5e89-11eb-8a05-1cbf44bf7d6d.png)