require_relative 'movie_time/movie_time'

class MovieTicket
  attr_reader :movie_time, :movie_title, :user_type

  def initialize(movie_daytime, movie_title, user_type)
    @movie_time = MovieDaytime.new(movie_daytime)
    @movie_title = movie_title
    @user_type = UserType.new(user_type)
  end
end