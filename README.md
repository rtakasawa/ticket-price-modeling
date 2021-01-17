# ticket-price-modeling()

## 元ネタ
https://github.com/j5ik2o/ticket-price-modeling

## お題
https://cinemacity.co.jp/ticket/



require_relative 'movie_ticket'
a=MovieTicket.new("2019-11-29T21:30:00+09:00","ジュマンジ","シネマシティズン（60才以上）")

a=MovieDaytime.new("2019-11-29T21:30:00+09:00")
require_relative 'movie_time.rb'


require_relative 'user_type'
UserType.new('シネマシティズン')