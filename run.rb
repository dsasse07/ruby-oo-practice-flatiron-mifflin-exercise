require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative 'lib/role'
require 'pry'


#Test your code here

#Managers.new(name, age, department)
michael = Manager.new('Michael',40,'Paper')
jim = Manager.new("Jim", 31, "Sales")

#Roles(name)

saleperson = Role.new("Salesperson")
accountant = Role.new("Accountant")
human_resources = Role.new("Human Resources")


#Employee.new(name, salary, manager, role)
toby = Employee.new('Toby',60000,michael, human_resources)
stanley = Employee.new('Stanley', 59000, michael,accountant)
pam = Employee.new('Pam', 55000, jim, saleperson)
andy = Employee.new('Andy', 56000, jim, saleperson)








binding.pry
puts "done"
