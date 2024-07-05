

content_to_write = [
  "This is JavaTpoint",
  "You are reading Ruby tutorial.",
  "Please visit our website."
]

File.open('file.rb', 'w') do |f|
  content_to_write.each do |line|
    f.puts line
  end
end

File.open('file.rb', 'r') do |f|
    f.each_line do |line|
      puts line
    end
  end
  