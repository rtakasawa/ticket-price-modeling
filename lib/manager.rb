require_relative "sales_calculation"
require_relative "csv_reader"
require_relative "output_format"

# movie_sales_info.csvのサマリー
puts "【今回のお題の売上集計】"
# csvを読み込みチケット情報を格納
sales_tickets = CsvReader.new("../csv/movie_sales_info.csv")
# 売上集計
sales_calculation_info = SalesCalculation.new(sales_tickets.info)
# 出力フォーマット
output_format = OutputFormat.new
# サマリー
output_format.format_total_summary(sales_calculation_info.total_summary)
# 作品別売上
output_format.format_title_summary(sales_calculation_info.title_summary)
# 料金タイプ別売上
output_format.format_user_summary(sales_calculation_info.user_summary)

# birthday_user_type.csvのサマリー
puts "【誕生プランを加えた売上集計】"
sales_tickets = CsvReader.new("../csv/birthday_user_type.csv")
sales_calculation_info = SalesCalculation.new(sales_tickets.info)
output_format = OutputFormat.new
output_format.format_total_summary(sales_calculation_info.total_summary)
output_format.format_title_summary(sales_calculation_info.title_summary)
output_format.format_user_summary(sales_calculation_info.user_summary)

# option_available.csvのサマリー
puts "【３Dオプションを加えた売上集計】"
sales_tickets = CsvReader.new("../csv/option_available.csv")
sales_calculation_info = SalesCalculation.new(sales_tickets.info)
output_format = OutputFormat.new
output_format.format_total_summary(sales_calculation_info.total_summary)
output_format.format_title_summary(sales_calculation_info.title_summary)
output_format.format_user_summary(sales_calculation_info.user_summary)
