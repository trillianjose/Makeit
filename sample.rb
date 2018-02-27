print "Ingresa el numero de participantes "
num = gets.chomp.to_i
people = []
num.times do
  print "Ingresa el nombre de la persona "
  people << gets.chomp
end
puts "La persona seleccionada es #{people.sample}"
