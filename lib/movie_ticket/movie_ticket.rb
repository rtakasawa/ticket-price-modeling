require_relative "./movie_time_type/movie_time_type"
require_relative "./movie_day_type/movie_day_type"
require_relative "./option/option"
require_relative "./user/user"
require_relative "fee_calculation"

# 映画チケット情報
class MovieTicket
  attr_reader :day, :time, :title, :user, :option, :fee_info

  def initialize(day_time, title, user, option)
    @day = MovieDayType.new(day_time)
    @time = MovieTimeType.new(day_time)
    @title = title
    @user = User.new(user)
    @option = Option.new(option)
    @fee_info = FeeCalculation.new(@day, @time, @user, @option)
  end
end