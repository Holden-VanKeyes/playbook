class Employee < ApplicationRecord
  has_many :tickets

  def self.get_avatar_url(id)
    employee = Employee.find(id)
    employee.avatar_url
  end
end
