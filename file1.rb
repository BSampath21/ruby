# number=5
# if(number>0)
# puts"#{number} is negative"
# end

#number=10
#if(number>100?"#{number} is positive":"#{number} is less than 100")

#names=["Kalki","Ashwathama","Karna"]
#puts names[1]
# a=gets.chomp.to_i
# var=(a>25?true:false)
# puts var

# Strings

#str="They call him OG"
#puts str[3]
# # puts str.upcase
# # puts str[0,4]

# str = "Alasyam ayyinda acharya putra"
# puts "#{str.object_id}"
# str << " ashwathama"
#  puts "Object id of str: #{str.object_id}"
#  str.freeze
#  str2="karna"
# str1=str+str2
#  puts str1
#  puts "#{str1.object_id}"

# str1="Naruto"
# str2="Naruto"

# puts str1.eql?str2
# puts str1.casecmp str2

# for i in 0..6 do
#     puts i
# end

# num=[1,2,3,6,7,10]
# for i in num do
#     puts i
# end

# i=1
# while i<=5 do
#     puts i
#     i+=1
#     break if i==4
# end

# num=[1,2,3,4,5,6]
# puts num.map{|i|i+1}

# num=[1,5,6,10,14]
# num.each do|i|
#     puts i
# end

# menu={
#     "ramen" => 200,
#     "korean_sandwich" => 100,
#     "sushi" => 250
# }
# menu.each do |item,price|
#     puts "#{item}: $#{price}"
# end

# menu.each do |item,price|
#     price1=price+(price*0.1)
#     puts "#{item}: $#{price1}" 
# end

# hash1=Hash[:a,1,:b,2,:c,3]
# p hash1


# hash2=Hash[[["a",1],["b",2],["c",3]]]
# p hash1

# def sum(*num)
#     num.inject(0){|sum,num|sum+num}
# end

# puts sum(1,3,4)

def sum(*num)
    num.inject(0){|sum,num| sum+num}
end

def add_msg(message,*numbers)
    puts "#{message} #{sum(*numbers)}"
end
add_msg("sum is :",1,2,4)