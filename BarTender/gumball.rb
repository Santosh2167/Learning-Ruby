
# Model 
# keep track of number of gumballs
# check if gumballs are available

# View
# inform user of result
# provide gumballs
# process user input

# Controller
# accept gumball refills
# prompt for user input

# class Gumball
# end

# class GumballMachineModel
#     # @gumballCount 0

#   def initialize(gumballCount: 0)
#     @gumballCount =10
#   end
  
#   def dispense
#     if @gumballCount > 0
#       @gumballCount -= 1
#       return Gumball.new
#     else
#       return nil
#     end
#   end

#   def refill(count)
#     @gumballCount += count
#   end

# end

# class GumballMachineView

#   def greeting
#     puts "Weolcome to The GUMBALL!!!"
#   end

#   def menu
#     choice = nil
#     while choice != "G" && choice != "R" && choice != "X"
#       puts "Press G to get a gumball, R to refill, or X to exit"
#       choice = gets.chomp.upcase
#     end
    
#     choice
#   end

#   def getGumball
#     puts "Yum, here's your gumball"
#   end

#   def machineEmpty
#     puts "Machine is out of Gumballs!! Please fill the machine."
#   end

#   def refill(count)
#     puts "Please refill the machine."
    
#     gumballCount += count

#     puts "Machine refilled successfully !!! Total Gumball Count is #{gumball_count}"
    
#   end

#   def exit
#     puts "Well played!!! See you next time"
#   end

# end

# class GumballMachineController

#   def initialize
#     @gumballMachineModel = GumballMachineModel.new
#     @gumballMachineView = GumballMachineView.new
#   end

#   def run
#     @gumballMachineView.greeting
#     choice = @gumballMachineView.menu 
    
#     while choice != "X"
#       if choice == "G"
#         gumball = @gumballMachineModel.dispense
#         if gumball.nil?
#           @gumballMachineView.machineEmpty
#         else
#           puts "Please collect your #{gumball} gumballs"
#           @gumballMachineView.dispense
#         end
#       end
#       if choice == "R"
#         numGumballs = @gumballMachineModel.refill(6)
#         @gumballMachineView.refill( numGumballs) 
#       end
#       choice = @gumballMachineView.menu
#     end
#     @gumballMachineView.exit
#   end
# end

# gumballMachineController = GumballMachineController.new
# gumballMachineController.run


class Gumball
end

class GumballMachineModel

  def initialize(gumballCount: 0)
    @gumballCount = gumballCount
  end
  
  def dispense
    # puts "gumballCount is #{@gumballCount}"
    if @gumballCount > 0
      @gumballCount -= 1
      return Gumball.new
    else
      return nil
    end
  end

  def refill(count)
    @gumballCount += count
  end

end

class GumballMachineView

  def greeting
    # output a greeting message to the console
    puts "Welcome to Gumball!!! Santosh Wons this machine"
  end

  def menu
    choice = nil
    while choice != "G" && choice != "R" && choice != "X"
      puts "Press G to get a gumball, R to refill, or X to exit"
      choice = gets.chomp.upcase
    end
    
    choice
  end

  def getGumball
    puts "Yum, here's your gumball"
  end

  def machineEmpty
    # output an appropriate message to the console
    puts "Machine is Emplty!!! Please R to refill"
  end

  def refill(count)
    # output an appropriate message to the console.
    puts "Do you want to refill the Machine? Go ahead"
    puts "Total Gumball in the machine is #{count}"
    count
    # Make sure you tell the user how many gumballs there are now!
  end

  def exit
    # output an appropriate message to the console
    puts "Thanks for Playing!!! G'day"
  end

end

class GumballMachineController

  def initialize
    @gumballMachineModel = GumballMachineModel.new
    @gumballMachineView = GumballMachineView.new
  end

  def run
    @gumballMachineView.greeting
    choice = @gumballMachineView.menu 
    
    while choice != "X"
      if choice == "G"
        gumball = @gumballMachineModel.dispense
        if gumball.nil?
          @gumballMachineView.machineEmpty
        else
          @gumballMachineView.getGumball
        end
      end
      if choice == "R"
        numGumballs = @gumballMachineModel.refill(6)
        @gumballMachineView.refill(numGumballs) # put something inside the brackets
      end
      choice = @gumballMachineView.menu
    end
    # call the exit method
    @gumballMachineView.exit
  end
end

gumballMachineController = GumballMachineController.new
gumballMachineController.run