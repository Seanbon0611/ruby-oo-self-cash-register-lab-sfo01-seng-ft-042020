require 'pry'
class CashRegister

  attr_accessor :total, :items, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    #item = "eggs"
    #price = 0.98 
    self.total += price * quantity
    quantity.times do
      @items << item
    end
    @last_item = price * quantity
  end

  def apply_discount
    if @discount != 0
      self.total -= total * discount / 100
      return "After the discount, the total comes to $800."
    else 
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @last_item
  end
end

transaction = CashRegister.new

#test