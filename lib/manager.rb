require_relative "sales_calculation"
require_relative "sales_ticket_reader"
require_relative "output_format"

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


# birthday_user_type.csvのサマリー
puts "【誕生プランを加えた売上集計】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/birthday_user_type.csv")

sales_calculation = SalesCalculation.new
output_format = OutputFormat.new

# サマリー
output_format.format_total_summary(sales_calculation.total_summary(sales_tickets))
# 作品別売上
output_format.format_title_summary(sales_calculation.title_summary(sales_tickets))
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation.user_price_summary(sales_tickets))


# option_available.csvのサマリー
puts "【３Dオプションを加えた売上集計】"
sales_tickets = SalesTicketReader.new
sales_tickets.csv_reader("../csv/option_available.csv")

sales_calculation = SalesCalculation.new
output_format = OutputFormat.new

# サマリー
output_format.format_total_summary(sales_calculation.total_summary(sales_tickets))
# 作品別売上
output_format.format_title_summary(sales_calculation.title_summary(sales_tickets))
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation.user_price_summary(sales_tickets))
