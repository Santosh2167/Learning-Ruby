class Dog
    

    def initialize (name, colour)
     #puts "I am the initialize method"
     @name = name
     @colour = colour
     @i=0
    end

    # def name(value)
    #     @name = value
    # end

    def speak
        puts "woof"
        puts "color is #{@colour}"
        puts "#{@i}"

    end

    def color(colour) 
    #    puts "white"
    @colour = colour
       
    end
end

doggo = Dog.new("Puppy","black") 
# doggo.name("Ralph")
doggo.speak
doggo.color("brown")
doggo.speak
# x = Dog.new("dfd","white")
# x.speak