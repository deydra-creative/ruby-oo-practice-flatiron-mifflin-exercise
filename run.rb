require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


e1=Employee.new("Sara", "Accounting",125000)
e2=Employee.new("Tomasz","Sales",116000)
e3=Employee.new("Stacy","Marketing", 92000)
e4=Employee.new("Tonya", "Accounting",125000)

m1=Manager.new("Victoria", "Sales", 39)
m2=Manager.new("Richard", "Accounting", 57)
m3=Manager.new("Henrik", "Marketing", 46)

puts "Done."