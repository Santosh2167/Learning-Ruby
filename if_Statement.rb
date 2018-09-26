puts "Please enter your age: "

age = gets

puts "your age is: #{age}"

if age.to_i > 18 
    puts "welcome to the Casino"

elsif age.to_i == 16
    puts "hello sweet sixteen!!!"
else
    puts "Sorry you are not allowed to go in"
end