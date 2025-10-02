module PaymentMethods
  def credit_card(amount)
    puts "Paid #{amount} using Credit Card"
  end

  def upi(amount)
    puts "Paid #{amount} using UPI"
  end
end

class ShoppingCart
  include PaymentMethods
end

class BillDesk
  include PaymentMethods
end

cart = ShoppingCart.new
cart.credit_card(100)
cart.upi(50)

bill_desk = BillDesk.new
bill_desk.credit_card(200)
bill_desk.upi(75)
