require 'pry'

class Manager
    attr_accessor :department, :age
    attr_reader :name, :employee

    @@all = []

    def initialize(name, department, age, employee)
        @name=name
        @department=department
        @age=age
        @employee=employee

        @@all << self
    end 

    def self.all
       #returns an `Array` of all the managers
        @@all
    end

    def employees
        #returns an `Array` of all the employees that the manager oversees
        Employee.all.select{|e| e.manager==self}
    end

    def hire_employee(name, salary)
        #takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee
        Employee.new(name, self, salary)
    end

    def self.all_departments
       #returns an `Array` of all the department names that every manager oversees
        self.all.map {|ad| ad.department}
    end

    def self.average_age
        #returns a `Float` that is the average age of all the managers
        ages = self.all.map {|aa| aa.age}
        ages.sum/ages.size
    end
end