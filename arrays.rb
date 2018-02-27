arr = ["Hola","mundo", 3, "veces"]
arr.each_with_index do |element, index|
  puts "El valor de la posicion #{index} es #{element}"
end
