
class Role
    @@all = []
    attr_reader :name

    def initialize (name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select { |employee| employee.role == self }
    end

    def managers
        self.employees.map(&:manager)
    end

    def add_employee(name, salary, manager)
        Employee.new(name, salary, manager, self)
    end

end