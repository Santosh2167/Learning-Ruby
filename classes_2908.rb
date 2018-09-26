# class Recipe
#     attr_accessor :name, :ingredients, :steps

#     def initialize 
#         @name = nil
#         @ingredients = nil
#         @steps = []
#     end
    
#     #reader/Getter
#     # def name
#     #     @name
#     # end
    
#     # #writter/Setter
#     # def name=(new_name)
#     #     @name = new_name
#     # end
# end

# recipe = Recipe.new
# recipe.name= ("Chocolate Cake")
# puts recipe.name

class Student
    attr_accessor :name, :student_number, :is_graduated, :interests

    def initialize name, interests=[], *args
        @name = name
        @interests = interests
        @student_number = rand(666)
        @is_graduated = false
        @args = args
    end

    def who_am_i
        self
    end
end

puts Student.new("John").interests
puts Student.new("John",["Snow Boarding"]).interests

# s1 = Student.new("John")
# s2 = Student.new("jane")

# puts s1.who_am_i
# puts s2.who_am_i