class Model
   def initialize
    @money=0
    @ingredients =10
   end

   def make_drink amount
    if ingredients >= amount
        @ingredients -=amount
        amount #returning amount
    else
        raise "Not enough ingredients"
    end
   end

   def deposit_money amount

    @money += amount

   end
    
    
end

class View 
    def take_order
        puts "Can I please have your order"
        gets.chomp
    end

    def pay amount
        puts "Can I please have #{amount}"
        gets.chomp
    end

    def give_drink
        puts "Here is your drink"
    end
    
end

class Controller 
    def initialize
        @on_shift = true
        @model = Model.new
        @view = View. new
    end

    def stand_by

        while @on_shift
            puts "Polishing glasses"
            puts "Users walks up"
            order = @view.take_order
            drink = @model.make_drink order
            cash = @view.pay (drink * 5)
            @model.deposit_money cash
            @view.give_drink
        end
    
    end   
end

bartender = Controller.new

bartender.stand_by