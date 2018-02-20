def fizz_buzz (num)
  if (num % 3 == 0) && (num % 5 == 0)
    puts "Fizzbuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end

puts "que numero desea: "
num = gets.chomp

puts "El numero que digitó es: #{num}"

fizz_buzz(num.to_i)
