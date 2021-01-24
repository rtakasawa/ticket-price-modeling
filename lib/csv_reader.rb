require "csv"
require_relative "./movie_ticket/movie_ticket"

class CsvReader
  attr_reader :info
  def initialize(csv_file_path)
    @info = self.csv_read(csv_file_path)
  end

  # csvを読み込んで、MovieTicketインスタンスを生成
  def csv_read(csv_file_path)
    sales_movie_ticket_list = []
    csv_info = CSV.read(csv_file_path)
    csv_info.each do |day_time, title, user, option|
      sales_movie_ticket_list.push(MovieTicket.new(day_time, title, user, option))
    end
    sales_movie_ticket_list
  end
end
