class Manager
    @@all = []
    attr_reader :name, age, department

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
        Employee.all.select
        
    end

end
