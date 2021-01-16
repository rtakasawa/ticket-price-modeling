require_relative 'movie_time/movie_time'

class MovieTicket
  attr_reader :movie_time, :movie_title

  def initialize(movie_time, movie_title, ticket_type)
    @movie_time = MovieTime.new(movie_time)
    @movie_title = movie_title
    # @ticket_type = TicketType.new
  end
end