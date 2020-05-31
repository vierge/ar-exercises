require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

company_revenue = Store.sum(:annual_revenue)
avg_store_revenue = Store.average(:annual_revenue)
stores_doing_well = Store.where("annual_revenue >= ?", 1000000).count


puts "total company revenue: #{company_revenue}"
puts "average store revenue: #{avg_store_revenue}"
puts "stores generating a million or more: #{stores_doing_well}"
