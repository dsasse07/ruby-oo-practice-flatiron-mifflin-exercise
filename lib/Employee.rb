class Employee
    @@all = []


    attr_reader :name, :manager
    attr_accessor :salary

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

end
