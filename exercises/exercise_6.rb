require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store 
  has_many :employees
end

class Employee 
  belongs_to :store
end

@store1.employees.create(first_name: "Mara", last_name: "Gray", hourly_rate: 69)

mara = @store1.employees.where(first_name: "Mara")

pp mara
