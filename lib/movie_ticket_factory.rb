require 'csv'
require_relative './movie_ticket/movie_ticket'

class MovieTicketFactory
  attr_reader :info

  # movie_sales_info.csvを読み込んで、MovieTicketインスタンスを生成
  def create
    @info = []
    sales_info = CSV.read("../movie_sales_info.csv")
    sales_info.each do |day_time, title, user|
      # infoにMovieTicketインスタンスを格納
      @info.push(MovieTicket.new(day_time, title, user))
    end
  end
end
