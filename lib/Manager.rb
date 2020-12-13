class Manager
    @@all = []
    attr_reader :name, :age, :department

    def initialize (name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self

    end

    def self.all
        @@all
    end

    

    def employees
        Employee.all.select {|employee| employee.manager == self} 
    end

    def roles
        self.employees.map(&:role)
    end

    def self.all_departments
        self.all.map(&:department).uniq
    end

    def self.average_age
        self.all.sum(&:age)/self.all.count.to_f
    end



end
