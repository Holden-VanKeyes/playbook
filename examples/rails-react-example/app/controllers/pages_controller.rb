class PagesController < ApplicationController
  def index
    @employees = Employee.all
    @tickets = Ticket.all
    @revenue_data = RevenueDatum.all
  end
end
