#A mixin is also a module

#the commparable module

#The methods and constants of a module is made available to a class. This is called as a mixin
#when a class can inherit features from mmore than one parent class, the class is supposed to inherit from the mixin module

#different classes need similar functionality


class OlympicMedal
  include Comparable
  MEDAL_VALUES = {gold: 3, silver: 2, bronze: 1}
  attr_reader :type
  def initialize(type,weight)
    @type=type
    @weight=weight
  end
  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
  
end

bronze=OlympicMedal.new(:bronze, 5)
silver=OlympicMedal.new(:silver, 10)
gold=OlympicMedal.new(:gold, 15)

p bronze<silver
p silver<gold
p bronze>silver
p bronze==silver
p bronze==bronze
p bronze!=silver
p bronze!=bronze
p bronze<=silver
p silver<=gold
p bronze>=silver
p silver>=gold