require './actor'

condition = "y"

while (condition == "y") do
  puts "1. Search actor\n2. List of actors"
  index = gets.chomp.to_i
  actors = []
  cars = []
  case index
  when 1
    puts "Name of the actor"
    name  = gets.chomp.to_s
    if actors.include?(name)
      puts "This actor is listed"
    else
      puts "This actor is not listed. Actor name please"
      actor_name = gets.chomp.to_s
      puts "Favorite Type of movies"
      fav_type = gets.chomp.to_s
      actors << Actor.new(actor_name, fav_type)
      puts "What model of car does he have?"
      model = gets.chomp.to_i
      puts "How much horse power"
      power = gets.chomp.to_i
      puts "What style does he drive"
      style = gets.chomp.to_s
      cars << Car.new(model, power, style)
    end
  when 2
    actors.each_index do |position|
      puts "#{actors[position].actor_name} - #{cars[position].type}"
    end
  else
    puts "You type the wrong option"
  end
  puts "Wish to continue? y or n"
  condition = gets.chomp.to_s
end
