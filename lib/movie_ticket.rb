require_relative "./movie_time_type/movie_time_type"
require_relative './movie_day_type/movie_day_type'
require_relative './user/user.rb'
require_relative 'fee_calculation'

# 映画チケット情報
class MovieTicket
  include FeeCalculation

  attr_reader :day, :time, :title, :user, :fee

  def initialize(day_time, title, user)
    @day = MovieDayType.new(day_time)
    @time = MovieTimeType.new(day_time)
    @title = title
    @user = User.new(user)
    @fee = fee_calculation(@day, @time, @user)
  end
end