anime = {
    "Deathnote"=>"Light",
    "Aot" => "Eren" ,
    "naruto" => "Naruto"
}

anime.each do |anime,hero|
    puts "#{anime} #{hero}"
end


# converting array into hashes
def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs =[a,b,c]
    Hash[key_value_pairs]
  end
  p artax

#   normal = Hash.new
# was_not_there = normal[:zig]
# puts "Wasn't there:"
# p was_not_there

# usually_brown = Hash.new("brown")
# pretending_to_be_there = usually_brown[:zig]
# puts "Pretending to be there:"
# p pretending_to_be_there