require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'

london = Department.new("London", "London, UK")
dumbo = Department.new("Dumbo", "NYC, US")

ally = Manager.new("Ally", 29, london)
michael = Manager.new("Michael", 55, dumbo)

iga = Employee.new("Iga", dumbo, 1400)
noga = Employee.new("Noga", dumbo, 700)
po = Employee.new("Po", dumbo, 5400)
dot = Employee.new("Dot", london, 8400)



#Test your code here


binding.pry
puts "done"
