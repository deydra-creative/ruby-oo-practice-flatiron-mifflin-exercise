require 'pry'

class Employee
 attr_accessor :department, :salary
 attr_reader :name, :manager

 @@all=[]

 def initialize(name, department, salary, manager)
    @name=name
    @department=department
    @salary=salary
    @manager=manager

    @@all << self
 end 

def self.all
    @@all
end 

 def employee_manager
    #name of employee's manager
    self.Manager.name
 end

 def employee_paid_over
    #returns an `Array` of all the employees whose salaries are over that amount
    @@all.select{|po| po.salary > salary}
   end 

 def find_department
    #`String` argument that is the name of a department and returns the first employee whose manager is working in that department
    @@all.select{|ed| ed.Manager.department == department}
   end  

 def tax_bracket
   # array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    @@employees.select {|e| (e.salary == self.salary)}
   end
end
