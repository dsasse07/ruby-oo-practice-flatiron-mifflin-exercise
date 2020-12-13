class Employee
    @@all = []


    attr_reader :name, :manager
    attr_accessor :salary, :role

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

end
