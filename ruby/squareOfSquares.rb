# ruby squareOfSquares.rb

# Task: Given an integral number, determine if it's a square number. In mathematics, a square number of perfect square is an integer that is a square of an integer; in other words, it is the product of some integer with itself.

def square_of_squares(num)
  return false if num < 0
  return true num == 0
  num % (num**0.5) == 0
end

square_of_squares(25)

# Test cases
# describe 'square_of_squares' do
#   it 'checks if a given integer is a perfect square' do
#     expect(square_of_squares(-1)).to eq(false)
#     expect(square_of_squares(0)).to eq(true)
#     expect(square_of_squares(3)).to eq(false)
#     expect(square_of_squares(4)).to eq(true)
#     expect(square_of_squares(25)).to eq(true)
#     expect(square_of_squares(26)).to eq(false)
#   end
# end

# 3
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
even_numbers = arr.select do |num|
  num.even?
end

p even_numbers

# 4
def keep_going
  puts "Enter a word:"
  str = gets.chomp
  while str != "STOP"
    puts "I'll keep going unless you tell me to STOP."
    puts "Enter another word:"
    str = gets.chomp
  end
end

keep_going
