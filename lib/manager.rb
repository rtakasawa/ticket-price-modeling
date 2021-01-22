require_relative 'sales_calculation'
require_relative './movie_ticket/movie_ticket'
require_relative 'movie_ticket_factory.rb'

include SalesCalculation

sales_tickets = MovieTicketFactory.new
sales_tickets.create

self.total_summary(sales_tickets)

self.title_summary(sales_tickets)

self.user_price_summary(sales_tickets)