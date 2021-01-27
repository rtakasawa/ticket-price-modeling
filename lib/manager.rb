require_relative "sales_calculation"
require_relative "csv_reader"
require_relative "output_format"

# 読み込みするcsvfileのpath
load_csv_list = [
  "../csv/movie_sales_info.csv",
  "../csv/birthday_user_type.csv",
  "../csv/option_available.csv"
]

load_csv_list.each do |csv|
  puts "csvfile[#{csv}]_売上集計"
  # csvを読み込み、チケット情報を格納
  sales_tickets = CsvReader.new(csv)
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
end
