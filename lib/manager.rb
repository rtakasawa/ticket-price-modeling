require_relative "sales_calculation"
require_relative "./movie_ticket/sales_ticket_reader.rb"
require_relative "output_format.rb"

# movie_sales_info.csvのサマリー
puts "【今回のお題の売上集計】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/movie_sales_info.csv")

sales_calculation = SalesCalculation.new
output_format = OutputFormat.new

# サマリー
output_format.format_total_summary(sales_calculation.total_summary(sales_tickets))
# 作品別売上
output_format.format_title_summary(sales_calculation.title_summary(sales_tickets))
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation.user_price_summary(sales_tickets))


# original_movie_sales_info.csvのサマリー
puts "【誕生プランを加えた売上集計】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/original_movie_sales_info.csv")

sales_calculation = SalesCalculation.new
output_format = OutputFormat.new

# サマリー
output_format.format_total_summary(sales_calculation.total_summary(sales_tickets))
# 作品別売上
output_format.format_title_summary(sales_calculation.title_summary(sales_tickets))
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation.user_price_summary(sales_tickets))


# option_true_movie_sales_infoのサマリー
puts "【３Dオプションを加えた売上集計】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/option_true_movie_sales_info.csv")

sales_calculation = SalesCalculation.new
output_format = OutputFormat.new

# サマリー
output_format.format_total_summary(sales_calculation.total_summary(sales_tickets))
# 作品別売上
output_format.format_title_summary(sales_calculation.title_summary(sales_tickets))
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation.user_price_summary(sales_tickets))
