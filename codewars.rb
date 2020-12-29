    require "pry"

   def counter(str)
    splitter = str.split("")
    new_a = (0...splitter.size).step(2).map {|i| splitter.values_at(i, i.next).join}
    if new_a[-1].length == 1
       new_a[-1] =  new_a[-1] + "_" 
    end
    new_a
end


"hello".sub('l', '*')
 "he*lo"
 "hello".gsub('l', '*')
 "he**o"









 rage = true
 livid = false
 

    
    str = "Jtbt7"
    print counter(str)



    #a.each { |i| if i % 3 == 0 then puts "three" elsif i % 5 == 0 then puts "five" else puts i end }


    
 # conditionals
    #and
    #or