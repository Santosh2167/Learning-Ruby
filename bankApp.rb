clear_screen = %x{clear}
puts clear_screen
puts "Welcome to Bank App. Your Name Please:"
get_name = gets
balance = 0
get_deposit = 0
puts "\n\nWelcome to Ruby Bank Ltd, #{get_name} _/\\_ _/\\_\n\n\nYour present balance is $#{balance}"

puts "what would you like to do? (Option: 1.Balance 2.Deposit 3.Withdraw 4.Exit)"



#p (option.chomp).downcase

check_option = false

while check_option == false do
    
    option = gets.chomp

    if option.downcase == "balance"
     puts "\nYour balance is $#{balance}"
     check_option = true
    elsif option.downcase == "deposit"
        puts "\n How much do you want to deposit: "
        get_deposit = gets.to_f
        deposit += get_deposit
        puts "\n Your present deposit is #{deposit}"
    else
    puts "Invalid selection. Please try again !!!\n What would you like to do? (option: balance)"
    
    end

end

puts "Please enter your password: "
password = gets.chomp

puts "Thank you for setting up your password! you need to re login\n\n"
puts "please enter your password to proceed"


check = false
option_two=""
while check == false do
    check_password = gets.chomp
if check_password == password
    puts "password Match!!! Welcome Again\n What would you like to do now? (Option: balance, deposit)"
    option = gets.chomp
    check = true
elsif
    puts "Are you trying to hack the account? Try again!!! please re-enter your password"
end

end

check = false 

while check == false do
    if option.downcase =="deposit"
        puts "how much do you want to deposit?"
            deposit_new = gets.to_f
            p deposit_new
            balance = deposit_new.to_f + balance
            puts "Your new balance is #{balance}\n\n"
            puts "whats next? (Option: deposit, balance)"
            option = gets.chomp
         
        
    else
        puts "your balance is #{balance}. Bye See you later."
        check = true
    end 
end