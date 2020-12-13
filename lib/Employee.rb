class Employee
    @@all = []


    attr_accessor :salary, :role, :manager, :name

    def initialize(name, salary, manager, role)
        @name = name
        @salary = salary
        @manager = manager
        @role = role
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(number)
      self.all.select {|employee| employee.salary > number}
    end

    def self.find_by_department(department) 
      self.all.find{|employee| employee.manager.department == department}
    end

    def tax_bracket 
      tax_bracket = Employee.all.select { |employee| employee.salary.between?(self.salary - 1000, self.salary+1000)}
      tax_bracket.delete(self)
      tax_bracket
    end

    def self.search_by_role(role_name) 
      self.all.select {|employee| employee.role.name == role_name}
    end

    def get_promoted(new_role)
      self.role = new_role 
      self.salary *= 1.1
    end

end
