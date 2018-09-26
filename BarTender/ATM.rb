
# dispense money--Model
# respond to user choice --Controller
# display balance -- View
# retrieve balance --Model 
# prompt for user input --- View
# respond to invalid pin --Controller 

class ATM

end

class ATMMachineModel
    @accountBalance =0
    # @ATMMachineView = ATMMachineView.new

    def initialize (accountBalance:0)
        @accountBalance = accountBalance
        
    end

    def dispense
        if @accountBalance >0
            @accountBalance -=1
            return ATM.new
        else
            return nil
        end

    end

    def pinValidation(pin)
        puts "Please reenter your PIN"
        temp_pin = gets.chomp

        if (pin==temp_pin)
            puts "correct pin"
        else
            puts "Invalid Pin"
        end
    end


end

class ATMMachineView
    

    def initialize 
        @pin = nil
        @ATMMachineModel = ATMMachineModel.new
    end

    def greeting
        puts "Welcome to Santosh's Bank PTY LTD- ATM Machine !!! Firstly reset your Pin"
        @pin = gets.chomp
        puts "Relogin required after pin set up. Please re-enter your PIN!!!"
        temp_pin = gets.chomp

        ATMMachineModel.pinValidation(temp_pin,@pin)
    end

    def 

    def menu
        choice = nil
        puts "your are in menu ATM"
        # while choice !=
    end

end

class ATMMachineController 

    def initialize
        @ATMMachineModel = ATMMachineModel.new
        @ATMMachineView = ATMMachineView.new
    end

    def run 
        @ATMMachineView.greeting

    end

end

atmMachineController = ATMMachineController.new
atmMachineController.run
