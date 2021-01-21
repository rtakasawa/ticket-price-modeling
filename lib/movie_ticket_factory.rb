require 'csv'
require_relative './movie_ticket/movie_ticket'

class MovieTicketFactory
  def create
    sales_info = CSV.read("movie_sales_info.csv")
    sales_info.each do |day_time, title, user|
      MovieTicket.new(day_time, title, user)
    end
  end
end
