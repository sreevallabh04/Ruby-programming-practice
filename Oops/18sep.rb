class Gadget

  def initialize
    @username="User #{rand(1..100)}"
    @password="topsecret"
    @production_number="#{('a'..'z').to_a.sample(8).join}-#{rand(1..9999)}"
    # puts "Gadget initialized with username: #{@username} and production number: #{@production_number}"
  end

  def info
    "Gadget #{production_number} has the username #{username}. The password is #{password}"
  end

  attr_reader :username, :production_number

  def username=(value)
    @username = value
  end

  def password=(value)
    @password = value
  end

  private
  attr_reader :password
end
phone =Gadget.new
p phone.username
p phone.production_number
p phone.username
#instance methods
  
