require_relative "sales_calculation"
require_relative "./movie_ticket/sales_ticket_reader.rb"

include SalesCalculation

# movie_sales_info.csvのサマリー
puts "【movie_sales_info.csv_出力データ（売上集計）】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/movie_sales_info.csv")
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
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/original_movie_sales_info.csv")
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
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/option_true_movie_sales_info.csv")
# サマリー
self.total_summary(sales_tickets)
puts
# 作品別売上
self.title_summary(sales_tickets)
puts
# 料金タイプ別売上
self.user_price_summary(sales_tickets)
puts