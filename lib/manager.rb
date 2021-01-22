require_relative 'sales_calculation'
require_relative './movie_ticket/movie_ticket_factory.rb'

include SalesCalculation

# movie_sales_info.csvのサマリー
puts "【movie_sales_info.csv_出力データ（売上集計）】"
sales_tickets = MovieTicketFactory.new
sales_tickets.create("../movie_sales_info.csv")
# サマリー
self.total_summary(sales_tickets)
puts
# 作品別売上
self.title_summary(sales_tickets)
puts
# 料金タイプ別売上
self.user_price_summary(sales_tickets)
puts


# original_movie_sales_info.csvのサマリー
puts "【original_movie_sales_info.csv_出力データ（売上集計）】"
sales_tickets = MovieTicketFactory.new
sales_tickets.create("../original_movie_sales_info.csv")
# サマリー
self.total_summary(sales_tickets)
puts
# 作品別売上
self.title_summary(sales_tickets)
puts
# 料金タイプ別売上
self.user_price_summary(sales_tickets)
puts


# option_true_movie_sales_infoのサマリー
puts "【option_true_movie_sales_info_出力データ（売上集計）】"
sales_tickets = MovieTicketFactory.new
sales_tickets.create("../option_true_movie_sales_info.csv")
# サマリー
self.total_summary(sales_tickets)
puts
# 作品別売上
self.title_summary(sales_tickets)
puts
# 料金タイプ別売上
self.user_price_summary(sales_tickets)
puts