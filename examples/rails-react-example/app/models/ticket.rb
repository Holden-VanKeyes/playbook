class Ticket < ApplicationRecord
  belongs_to :employee

  def self.get_employee_tix(id)
    Ticket.all.filter { |ticket| ticket[:employee_id] == id }
  end
end
