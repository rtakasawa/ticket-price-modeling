require_relative 'sales_total_calculation'
require_relative './movie_ticket/movie_ticket'
require_relative 'movie_ticket_factory.rb'

movie_tickets = MovieTicketFactory.new
movie_tickets.create

