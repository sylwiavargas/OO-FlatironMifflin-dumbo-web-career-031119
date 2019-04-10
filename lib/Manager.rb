class Manager

attr_reader :name, :age, :department, :employee

@@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    overseen_employees = Employee.all.select{|employee| employee.department == self.department}
    just_names = overseen_employees.map(&:name)
  end

  def hire_employee(name, salary)
    Employee.new(name, self.department, salary)
  end

  def departments
    Department.all.map(&:manager)
  end

  def self.average_age
    managers_number = Manager.all.size.to_f
    managers_age = Manager.all.map(&:age)
    managers_age_total = managers_age.inject(0){|sum,x| sum + x }
    average_age = managers_number.to_f/managers_age_total.to_f
  end

end


#  # Manager
        # Manager#name
        # returns a String that is the manager's name

        # Manager#department
        # returns a String that is the department that the manager oversees

        # Manager#age
        # returns a Fixnum that is the age of the manager

        # Manager#employees
        # returns an Array of all the employees that the manager oversees

        # Manager.all
        # returns an Array of all the managers

            # Manager#hire_employee
            # takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees

        # Manager.all_departments
        # returns an Array of all the department names that every manager oversees

        # Manager.average_age
        # returns a Float that is the average age of all the managers
