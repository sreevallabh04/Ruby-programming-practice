class Manager < Employee
end
Class Worker < Employee
end

bob = Manager.new("Bob", 45)
dan = Worker.new("Dan", 30)
p bob.class
p dan.class 
p bob.introduce
p dan.introduce


Class Manager < Employee
def yell
  "Who's the boss? I am the boss!"
end
end
class Worker < Employee
  def clock_in(time)
    "Starting my shft at #{time}"
  end
end
bob=Manager.new("Bob",45)
dan=Worker.new("Dan",30)
p bob.yell
p dan.clock_in("9:00 AM")
p bob.introduce

Sally = Manager.new("Sally",45)
p sally.introduce
bob= Worker.new("Bob",45)
p bob.introduce


Class Manager < Employee
attr_reader:rank
def initialize(name,age,rank)
  super(name,rank)
  @rank
end
def yell
  "Who's the boss? I am the boss!"
end
def