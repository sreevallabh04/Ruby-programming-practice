# puts 5.class.superclass.superclass.superclass
# puts 5.class.ancestors
# puts 8.class

# puts 5.class == 8.class
# puts 3.14.class
# puts 0.95.class
# puts -13.353.class
# puts 3.class==3.14.class
# puts Hash.new(0).class
# puts true.class


# puts 5.methods

# string="Hello"
# puts string.methods


# Creating our first class

class Gadget

  def initialize
    @username="User #{rand(1..100)}"
    @password="topsecret"
    @production_number="#{("a".."z").to_a.sample(8)}-#{rand(1..9999)}"
    puts "Gadget initialized with username: #{@username} and production number: #{@production_number}"
  end
phone=Gadget.new

p phone

laptop=Gadget.new
p laptop

p phone.instance_variables

# phone=Gadget.new
# laptop=Gadget.new
# microwave=Gadget.new
# # puts phone.class
# # puts laptop.class
# # puts phone.class==laptop.class
# # puts phone.class.ancestors
# # puts laptop.class.ancestors
# # puts phone.class.ancestors==laptop.class.ancestors
# # puts phone.class.ancestors==laptop.class.ancestors
# # puts microwave.class
# # puts microwave.class.ancestors
# # puts microwave.class.ancestors==phone.class.ancestors
# # puts microwave.class.ancestors==laptop.class.ancestors
# # puts microwave.class.ancestors==microwave.class.ancestors
# # puts microwave.class.ancestors==microwave.class.ancestors
