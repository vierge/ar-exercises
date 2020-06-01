require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  def valid_wage?
    { in: 40..200 }
  end 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_wage, presence: true, if: :valid_wage? 
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
end

puts "Enter a store name:"
@thisstore = gets.chomp.to_s

new_store = Store.create(name: @thisstore)

pp new_store

puts "Name invalid? ::" + new_store.errors[:name].any?.to_s
puts "Revenue invalid? ::" + new_store.errors[:annual_revenue].any?.to_s