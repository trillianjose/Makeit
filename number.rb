print "Ingresa el numero "
num = gets.chomp.to_i
if num < 10
  puts "El numero es menor a 10"
elsif num > 10
  puts "El numero es mayor a 10"
else
  puts "El numero es igual a 10"
end
