require 'date'

class MovieTime
  def initialize(movie_time)
    movie_time = DateTime.parse(movie_time)
    # @time_type = DateTime.parse(movie_time)
  end
end