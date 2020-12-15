class Role
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def employees
        Employee.all.select{|employee| employee.role == self}
    end

    def managers
        Manager.all.select{|manager| manager.role == self}
    end

    def add_employee(employee_name, salary, manager_obj)
        Employee.new(employee_name, salary, manager_obj, self)
    end

end