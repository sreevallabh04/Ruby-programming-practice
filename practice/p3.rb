# Problem 3 — Product
# Task:
# Create a Product class to manage stock.
# • Each product has a name, price, and quantity.
# • name should be read-only, but price and quantity should be validated (nonnegative).
# • Add methods restock(amount), sell(amount), and total_value.
# • Add a class method to calculate total inventory value of multiple products.

class Product
  attr_reader :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end
end

def Product.total_inventory_value(products)
  products.sum { |product| product.price * product.quantity }
end

