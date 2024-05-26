class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @tickets = Ticket.all
  end
end
