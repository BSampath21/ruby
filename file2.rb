# module Eat
#     def breakfast
#         puts "Eating bread"
#     end
# end

# class Dish
#     include Eat

#     def lunch
#         puts "Eating biryani"
#     end

#     def dinner
#         puts "Eating ramen"
#     end

# end

# japan=Dish.new.breakfast
# puts japan

# myArray = "geeks geeks".split('s', -2) 
# puts myArray 

# add_method=lambda{|a,b| a+b}
# puts add_method.call(5,8)

# empty=lambda{}
# puts empty.object_id
# puts empty.class
# puts empty.class.superclass

# class Sum
#     def add(a,b)
#         return a+b
#     end
# end

# add_method=Sum.new.method("add")
# addition=add_method.to_proc
# puts addition.call(8,2)

# def msg(a,b)
#     yield(a,b)
# end

# puts msg(5,9) {|a,b| a+b}

# def msg(a,b,operation)
#     operation.call(a,b)
# end

# puts msg(5,6, lambda{|a,b| a+b})

# def fun
#     puts yield
#     puts method(:fun)
#     puts method(:yield)

# end

# fun {"Everybody hurt sometimes"}


# sum=lambda do |a,b|;a+b;
# end
# puts sum.call(10,20)

# def msg 
#     lambda{return "I'm Batman"}.call
# end
# puts BasicObject.superclass


# class Dev
#     def initialize(language)
#         @language=language
#     end

#      def language=(new_lang)
#          @language=new_lang
#      end
#     def language
#         @language
#     end

# end

# lang= Dev.new("")
# puts lang.language="Python"

# class Dish
#     attr_accessor:dish

#     def initialize(dish)
#         @dish=dish
#     end
# end

# dish_name= Dish.new("ramen")
# puts dish_name.dish
# puts dish_name.dish="korean sandwich"

# class Marvel
#     class << self
#     def show
#         puts "Avengers Assemble"
#     end
# end
# end

# Marvel.show

# class Planet
#     @@planet_count=0
#     def initialize(name)
#         @name=name
#         @@planet_count+=1
#     end

#     def self.planet_count
#         @@planet_count
#     end
# end

# Planet.new("Neptune")
# Planet.new("Uranus")
# Planet.new("mars")
# puts Planet.planet_count

# class ApplicationConfiguration
#     @@configuration = {}
  
#     def self.set(property, value)
#       @@configuration[property] = value
#     end
  
#     def self.get(property)
#       @@configuration[property]
#     end
#   end
  
#   class ERPApplicationConfiguration < ApplicationConfiguration
#   end
  
#   class WebApplicationConfiguration < ApplicationConfiguration
#   end
  
#   ERPApplicationConfiguration.set("name", "ERP Application")
#   WebApplicationConfiguration.set("name", "Web Application")
  
#   p ERPApplicationConfiguration.get("name")
#   p WebApplicationConfiguration.get("name")
  
#   p ApplicationConfiguration.get("name")

# class Fun
#     @food_count=0

#     def self.increment
#         @food_count+=1
#     end

#     def self.current
#         @food_count
#     end
# end

# class Funny < Fun
#     @food_count=101
# end
# puts Fun.increment
# puts Fun.current
# puts Funny.increment

# class Die
#     def gross
#         "return nothing!the boogeymen died"
#     end
# end

# puts Die.new

# [[1, 2, 3, 4], [42, 43]].each { |a, b| puts "#{a} #{b}" }

# *car,bake,star=[56,98,75,86]
# puts car
# puts star

# puts Hash[[[23,24],[35,56]]]
# arr=[[[23,24],[35,56]]]
# puts Hash[*arr.flatten]

# puts [82,35,48,24,56,48].sort

class Stack
    def initialize
      @stack = []
    end
    
    def push(item)
      @stack.push(item)
    end
    
    def pop
      @stack.pop
    end
    
    def peek
      @stack.last
    end
    
    def empty?
      @stack.empty?
    end
    
    def size
      @stack.size
    end
  end
  
  # Example usage:
  stack = Stack.new
  stack.push(1)
  stack.push(2)
  stack.push(3)
  
  puts stack.pop  
  puts stack.peek  
  puts stack.empty?  
  