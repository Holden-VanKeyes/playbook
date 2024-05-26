class EmployeesController < ApplicationController
  def index
    Employee.all
  end

  def show
    Employee.find(params[:id])
  end
end
