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

puts 'seeding Employees...'
10.times do
  Employee.create(name: Faker::Name.unique.name, avatar_url: "https://api.dicebear.com/8.x/personas/svg?seed=#{Faker::Name.unique.name}")
end
employee_ids = Employee.pluck(:id)

puts 'seeding Tickets...'
30.times do
  Ticket.create(category: categories.sample, error_type: errors.sample, description: Faker::Quote.yoda,
                employee_id: employee_ids.sample)
end

counter = 0
month = 4
puts 'seeding Revenue Data ...'
8.times do
  day = counter.even? ? '1' : '15'
  RevenueDatum.create(amount: Random.rand(50_000..200_000), date: (month + 1).to_s + '/' + day)
  counter += 1
  month += 1
end
