require 'csv'
require_relative 'movie_ticket'

class MovieTicketFactory
  attr_reader :info

  # movie_sales_info.csvを読み込んで、MovieTicketインスタンスを生成
  def create(csv_file_path)
    @info = []
    sales_info = CSV.read(csv_file_path)
    sales_info.each do |day_time, title, user, option|
      @info.push(MovieTicket.new(day_time, title, user, option))
    end
  end
end
