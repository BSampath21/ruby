require 'json'

json_file_path = 'data.json'

begin
  # Read the JSON file and parse it
  file = File.read(json_file_path)
  data = JSON.parse(file)

  # Accessing arrays and objects within the JSON data
  puts "Company Name: #{data['company_info']['name']}"
  puts "Founded Year: #{data['company_info']['founded_year']}"
  puts "Location: #{data['company_info']['location']}"
  puts "\nEmployees:"

  # Iterating over an array of objects
  data['employees'].each do |employee|
    puts "ID: #{employee['id']}"
    puts "Name: #{employee['name']}"
    puts "Position: #{employee['position']}"
    puts "Department: #{employee['department']}"
    puts "---"
  end

#   puts "Employees' Names:"
#   data['employees'].each do |employee|
#     puts employee['name']
#   end

rescue Errno::ENOENT => e
  puts "Error: #{e.message}"  # Handle file not found error
rescue JSON::ParserError => e
  puts "Error parsing JSON: #{e.message}"  # Handle JSON parsing error
end
