require 'faker'

# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
categories = [
  'New',
  'Manager Feedback',
  'Processing',
  'Awaiting Feedback',
  'Approved'
]

errors = [
  'Missing part',
  'Not performing',
  'Unexpected output',
  'Need technical feedback'
]

def randomize(string)
  selection = string == 'category' ? categories.sample : errors.sample
  selection.type
end

# Employees
puts 'seeding Employees...'
10.times do
  Employee.create(name: Faker::Name.unique.name, avatar_url: "https://api.dicebear.com/8.x/personas/svg?seed=#{Faker::Name.unique.name}")
end
employee_ids = Employee.pluck(:id)

# t.string "category"
# t.string "error_type"
# t.string "description"
# t.string "belongs_to"
# t.string "employee"

puts 'seeding Tickets...'
30.times do
  Ticket.create(category: categories.sample, error_type: errors.sample, description: Faker::Quote.yoda,
                employee_id: employee_ids.sample)
end
