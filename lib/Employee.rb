class Employee

  attr_reader :name, :department, :salary

  @@all = []

    def initialize(name, department, salary)
      @name = name
      @department = department
      @salary = salary
      @@all << self
    end

    def self.all
      @@all
    end

    def manager_name
      Manager.all.find{|manager| manager.department == self.department}
    end

    def self.paid_over(number)
      Employee.all.select{|employee| employee.salary.to_f >= number}
    end

    def self.find_by_department(department)
      self.all.find{|employee| employee.department == department}
    end

    def tax_bracket
      tax_bracket_folks = Employee.all.select{|employee| employee.salary >= self.salary+500 || employee.salary <= self.salary-500}
    end

end


      # Employee#name
      # returns a String that is the employee's name
      # Employee#salary
      # returns a Fixnum that is the employee's salary
      # Employee#manager_name
      # returns a String that is the name of their manager
      # Employee.all
      # returns an Array of all the employees
      # Employee.paid_over
      # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount

      # Employee.find_by_department
      # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
      # Employee#tax_bracket
      # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
