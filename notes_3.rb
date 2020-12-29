#self current object

#main self at the top level

puts "hello"


require "pry"

class Pie


    attr_accessor :blueberry
    attr_reader :apple
    
    def self.yum
        self
    end

    def apple=(apple)
        @apple = apple
        Apple.pie = self
end
end

class Apple

    attr_reader :pie

    def pie=(self)

    
   end

apple_1 = Pie.new

puts Pie.yum == Pie


puts apple_1.apple = Apple.new 




class Dog

        
        def bark
            puts "woof"
        end

        def chew 
            puts "nom"
        end

        def fetch
            puts "run"
        end

    end
    


fido = Dog.new
puts fido.bark
puts self
  #  binding.pry

