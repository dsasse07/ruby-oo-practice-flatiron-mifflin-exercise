class Employee
  @@all = []
  attr_accessor :salary, :role, :name, :manager

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

  def self.paid_over(num)
      self.all.select {|employee| employee.salary > num}
  end
  
  def department
      self.manager.department
  end

  def self.find_by_department(department_name)
      self.all.find {|employee| employee.department == department_name}
  end

  def tax_bracket
      tax_bracket = Employee.all.select {|employee| employee.salary.between?(self.salary-1000, self.salary+1000)}
      tax_bracket.delete(self)
      tax_bracket
  end

  def self.search_by_role(role_name)
      self.all.select {|employee| employee.role.name == role_name}
  end

  def get_promoted(role_obj)
      self.role = role_obj
      self.salary *= 1.05
  end
end
