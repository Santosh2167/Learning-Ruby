def divide_by_zero
    1/0
rescue ZeroDivisionError=> x
    puts x.to_s 
end

#end