class Gadget

  def initialize
    @username="User #{rand(1..100)}"
    @password="topsecret"
    @production_number="#{('a'..'z').to_a.sample(8).join}-#{rand(1..9999)}"
    # puts "Gadget initialized with username: #{@username} and production number: #{@production_number}"
  end
end

  def info
  "Gadget #{production_number} has the username #{username}. The password is #{password}"
end

phone=Gadget.new
laptop=Gadget.new
puts phone.info
puts laptop.info

phone=Gadget.new

p phone

laptop=Gadget.new
p laptop

p phone.instance_variables


#instance methods
