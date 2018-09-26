puts "Books code:"

puts "Book 1 Code: 01"

puts "Book 2 Code: 02"

puts "Book 3 Code: 03"

puts "Book 4 Code: 04"

puts "Book 5 Code: 05"

counter = true

basket = []

book_quantity = 0
book_code = 0

while counter == true do
    puts "enter book code: "
    book_code = gets.chomp
    basket << book_code.to_i

    puts "enter book quantity: "
    book_quantity = gets.chomp
    basket << book_quantity.to_i

    puts "do you want buy more books? (y/n)"
      option = gets.chomp
      if option.downcase == "y"
        puts "Enter info for the book"
      else
        counter = false
      end
end

    #   basket.each do |items|
    #     puts items
    #   end 

      book_01 = basket.count(01)
      book_02 = basket.count(02)
      book_03 = basket.count(03)
      book_04 = basket.count(04)
      book_05 = basket.count(05)

      total_book = book_01 + book_02 + book_03 + book_04 + book_05 
      puts "total book #{total_book}"
     
      if total_book ==1
        price "$8"
      end   
      