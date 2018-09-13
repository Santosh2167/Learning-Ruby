puts "welcome to the banking app!!! made in RUBY"
#puts "How many of you want to open the account today?"

# total_account = gets

# i = 0
# customer = "customer"
# balance = "balance"
# while i < total_account.to_i do
#     puts "Name of Customer #{i}:"
#     customer + i = gets
#     puts "What is the opening balance?: "
#     balance + i = gets

#     i.to_i += 1
# end

puts "Can i get you name please: "
name = gets

puts "Can i get amount you are depositing: "
balance = gets

puts "Welcome to Ruby Bank #{name}, your current balance is #{balance}!"
puts "You have the following option: "
puts "1. Deposit more: press 1"
puts "2. Withdraw: press 2"
puts "3. Exit: press 3"

option = gets 
