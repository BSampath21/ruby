lst=["Apple","Orange","Mango","Watermelon"]

f=File.new("./file_f.rb","w")
lst.each {|line| f.puts(line)}
f.close