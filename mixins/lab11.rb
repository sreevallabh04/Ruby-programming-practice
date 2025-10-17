module SalaryCalculator
  def calculate_salary(basic, hra, da)
    basic + hra + da
  end
end

class Employee
  include SalaryCalculator
  
  attr_accessor :emp_id, :name, :basic, :hra, :da
  
  def initialize(emp_id, name, basic, hra, da)
    @emp_id = emp_id
    @name = name
    @basic = basic
    @hra = hra
    @da = da
  end
  
  def show_slip
    total_salary = calculate_salary(@basic, @hra, @da)
    
    puts "Employee ID: #{@emp_id}"
    puts "Name: #{@name}"
    puts "Basic Salary: #{@basic}"
    puts "HRA: #{@hra}"
    puts "DA: #{@da}"
    puts "Total Salary: #{total_salary}"
    puts "-" * 30
  end
end

employee1 = Employee.new("EMP001", "John Doe", 25000, 5000, 3000)
employee2 = Employee.new("EMP002", "Jane Smith", 30000, 6000, 4000)

puts "Salary Slips:"
puts "=" * 30

employee1.show_slip
employee2.show_slip
