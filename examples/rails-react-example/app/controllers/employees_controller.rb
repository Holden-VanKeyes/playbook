class EmployeesController < ApplicationController
  def index
    Employee.all
  end

  def show
    Employee.find(params[:id])
    @card_list = [
      { title: 'NEW', tab_color: 'info', pill_value: 25 },
      { title: 'MANAGER FEEDBACK', tab_color: 'primary', pill_value: 5 },
      { title: 'PROCESSING', tab_color: 'warning', pill_value: 3 },
      { title: 'AWAITING FEEDBACK', tab_color: 'error', pill_value: 2 },
      { title: 'APPROVED', tab_color: 'success', pill_value: 15 }
    ]
  end
end
