#search string - start_with,include
"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include?"Yoda"

#Replacing a substring
"I should look into your problem when I get time".sub('I','We')

"I should look into your problem when I get time".gsub('I','We')

'RubyMonk'.gsub(/[aeiou]/,'1')

#loops
loops do
monk.meditate
break if monk.nirvana?
end

#run a block of code n times
5.times do
    # do the stuff that needs to be done
  end

#   In Ruby, the method map is used to transform the contents of an array according to a specified set of rules defined inside the code block. 

[1,4,5,6,7].map{|a| a*3}


//filtering elements in array
[1,2,3,4,5,6].select {|number| number % 2 == 0}

a=gets.chomp.to_i
for i in 1..a
    puts i 
end

def array_copy(source)
    destination = []
    # your code
    source.each do |i|
      destination << i if i<4
    end
    return destination
  end

  def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }
  end
  

  puts add(1, 2, 3)
  puts add(1, 2, 3, 4)

#####
  def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }  
  end
  
  def subtract(*numbers)
    current_result = numbers.shift
    numbers.inject(current_result) { |current_result, number| current_result - number }  
  end
  
  def calculate(*arguments)
    # if the last argument is a Hash, extract it 
    # otherwise create an empty Hash
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add(*arguments) if options[:add]
    return subtract(*arguments) if options[:subtract]
  end