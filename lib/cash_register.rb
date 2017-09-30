class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_s.to_f
    @items = []
  end

  def add_item(item, cost, quantity = 1)
    @total += (cost * quantity)
    quantity.times {@items << item}
  end

  def apply_discount
    if @discount > 0
      @total = @total * (1 - (@discount/100))
      total = @total.to_s.gsub(/(\.)0+$/, '')
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end


end
