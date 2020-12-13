require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative 'lib/Role'
require 'pry'


#Test your code here

michael = Manager.new('Michael',40,'Paper')
jim = Manager.new('Jim', 34, 'sales')

salesperson = Role.new("Salesperson")
accountant = Role.new("Accountant")

dwight = Employee.new('Dwight',60000, michael, salesperson)

binding.pry
puts "done"
