=begin
Task: Please create a 4 x 4 multiplication table using loops

Restrictions and expectations

1. You can use as many functions or variables you want
2. This is a common exercise so please, do not search for the answer in the internet
3. When you're done, try to do it a in different way
4. Do not use puts inside the build_table method
5. The output should look like this

  1 2 3 4 5
  2 4 6 8 10
  3 6 9 12 15
  4 8 12 16 20
  5 10 15 20 25

=end

class MultiplicationTable
  def build_table(size)
    multiplication_array = []
    for i in 1..size
      for j in 1..size
        multiplication_array.push(i*j)
      end
    end
    multiplication_array
  end
end

puts "Digite el tamaño de la tabla"
size = gets.chomp.to_i

multiplication_table = MultiplicationTable.new.build_table(size)

multiplication_table.each_slice(size) {|line| p line}




# class Hammer
#   def initialize(material, peso, color)
#     @material = material
#     @peso = peso
#     @color = color
#   end
#   def poner_clavo
#   end
#   def sacar_clavo
#   end
# end
