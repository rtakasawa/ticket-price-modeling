require "csv"
require_relative "movie_ticket"

class SalesTicketReader
  attr_reader :info

  # csvを読み込んで、MovieTicketインスタンスを生成
  def csv_reader(csv_file_path)
    @info = []
    sales_info = CSV.read(csv_file_path)
    sales_info.each do |day_time, title, user, option|
      @info.push(MovieTicket.new(day_time, title, user, option))
    end
  end
end
