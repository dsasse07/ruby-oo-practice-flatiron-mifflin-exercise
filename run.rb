require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new('Michael',40,'Paper')
dwight = Employee.new('Dwight',60000,michael)
binding.pry
puts "done"
