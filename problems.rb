

# def kaprekar?(k)
#     no_of_digits = k.to_s.size
#     square = (k ** 2).to_s
    
#     second_half = square[-no_of_digits..-1]
#     first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
    
#     k == first_half.to_i + second_half.to_i
#   end

#non-duplicate elements in array

def non_duplicated_values(values)
    # Write your code here
    arr=[]
    values.each do |x|
      arr << x if values.count(x)==1
    end
    return arr
end

val=[25,20,24,56,78,24]
puts non_duplicated_values(val)

# Given an array, return true if all the elements are Fixnums
def array_of_fixnums?(array)
    # Write your code here
    array.each do |x|
      if x.is_a?(Integer)
        return true
      else
      return false
      end
    end
  end

  #palindrome
  def palindrome?(sentence)
    #str=sentence.downcase.split.join
    str=sentence.downcase.gsub(" ","")
    pal=(str.reverse).eql? str
    return pal
  end

#   Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.
  def number_shuffle(number)
    no_of_combinations = number.to_s.size == 3 ? 6 : 24
    digits = number.to_s.split(//)
    combinations = []
    combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
    combinations.uniq.sort
  end


#   Given a custom class MyArray,
# write a 'sum' method that takes a block parameter
  class MyArray
    attr_reader :array
  
    def initialize(array)
      @array = array
    end
  
    def sum(initial_value = 0)
      return array.inject(:+) + initial_value unless block_given?
      sum = initial_value
      array.each {|n| sum += yield(n) }
      sum
    end
  end

#   Given a string "Sort words in a sentence", it should return "a in Sort words sentence".
  def sort_string(string)
    # your code here
    words=string.split
    sort_words=words.sort_by{|word| word.length}
    sort_sen=sort_words.join(" ")
    return sort_sen
  end

  class Restaurant
    def initialize(menu)
      @menu = menu
    end
  
    def cost(*orders)
      orders.inject(0) do |total_cost, order|
        total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
      end
    end
  end

#   random select
  def random_select(array, n)
    # your code here
    res=[]
    n.times do
      res<<array[rand(array.length)]
    end
    res
  end