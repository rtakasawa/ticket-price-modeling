require_relative 'movie_time/movie_daytime'
require_relative 'ticket_type/user_type.rb'
require_relative 'fee_calculation'

# 映画チケット情報
class MovieTicket
  include FeeCalculation

  attr_reader :movie_daytime, :movie_title, :user_type

  def initialize(movie_daytime, movie_title, user_type)
    @movie_daytime = MovieDaytime.new(movie_daytime)
    @movie_title = movie_title
    @user_type = UserType.new(user_type)
    @fee = fee_calculation(@movie_daytime.day_type, @movie_daytime.time_type, @movie_daytime.cinema_day, @user_type)
  end
end