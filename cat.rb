class Cat
    def initialize(name, colour, location)
        @name = name
        @colour = colour
        @location = location
        @walk=0
    end

    def speak (name1)

        puts "My name is #{name1} and my color is #{@colour}"
    end

    def location
        puts "my location is #{@location}"
    end

    def walk
        @walk +=1
    end

    def display_walk
        puts "i have been walking for #{@walk} times today"
    end

end

myCat = Cat.new("Dixi","polkadot","Sydney")
myCat.speak("Pixi")
myCat.location
myCat.walk
puts "calling walk 2nd time"
myCat.walk
puts "calling walk 3nd time"
puts "displaying walk now:"
myCat.display_walk

#https://github.com/CoderAcademy-SYD/ruby-string-methds-and-control-structures