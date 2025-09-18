class Gadget

  def initialize
    @username="User #{rand(1..100)}"
    @password="topsecret"
    @production_number="#{('a'..'z').to_a.sample(8).join}-#{rand(1..9999)}"
  end

  def info
    "Gadget #{production_number} has the username #{username}. The password is #{password}"
  end

  attr_reader :production_number, :username

  def username=(value)
    @username = value
  end

  def password=(value)
    @password = value
  end

  private
  attr_reader :password
end

phone = Gadget.new
p phone.username
p phone.production_number
p phone.username


