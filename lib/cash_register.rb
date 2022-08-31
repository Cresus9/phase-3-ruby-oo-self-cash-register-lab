class CashRegister
    attr_reader :discount, :total
    attr_accessor :discount, :total

    def initialize (discount=0, total=0)
        @discount =discount
        @total=total
    end
    def add_item(title, price, quantity=1)
        @price = price
        @total += price * quantity
    end
    def apply_discount
        if (discount !=0)
        self.total =(total * ((100.0 - discount.to_f)/100))
        "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end
    end





end
