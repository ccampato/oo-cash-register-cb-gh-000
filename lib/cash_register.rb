require "pry"
class CashRegister
  attr_accessor :total, :discount, :title, :price,

  def initialize(*discount)
    @total = 0
    @discount = 20
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end

  def apply_discount
    self.total -= 0.2*self.total
    if self.total > 0
      return "After the discount, the total comes to $#{self.total.to_int}."
    else
      return "There is no discount to apply."
    end
  end

  def self.items
    Array.new(4, @title)
  end

end
