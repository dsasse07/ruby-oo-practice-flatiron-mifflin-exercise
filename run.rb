require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative 'lib/Role'
require 'pry'


#Test your code here

michael = Manager.new('Michael',40,'Paper')
jim = Manager.new('Jim', 34, 'Sales')

salesperson = Role.new("Salesperson")
accountant = Role.new("Accountant")

dwight = Employee.new('Dwight',60000, michael, salesperson)

andy = Employee.new('Andy',55000, jim, salesperson)
angela = Employee.new('Angela',60500, jim, accountant)

binding.pry
puts "done"
