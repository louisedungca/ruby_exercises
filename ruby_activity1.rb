# ruby ruby_activity1.rb
# 1
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "Answer 1:"
numbers.each do |number|
  puts number
end

# 2
h = {
  a:1,
  b:2,
  c:3,
  d:4,
}

puts "Answer 2:"
puts h[:b]


# 3

# 4 age.rb
puts "Hello, how old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be #{age + 10} years old."
puts "In 20 years you will be #{age + 20} years old."
puts "In 30 years you will be #{age + 30} years old."
puts "In 40 years you will be #{age + 40} years old."


# 5
arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)

# 6 Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100

puts "Please type a number:"
number = gets.chomp.to_i

if number > 0 && number < 51
  puts "The number is between 0-50."
elsif number >= 51 && number < 101
  puts "The number is between 50-100."
elsif number > 100
  puts "The number is above 100."
else
  puts "Please pick a number from 0 and above."
end

=begin

if number.between?(0, 50)
  puts "The number is between 0-50."
elsif number.between?(51, 100)
  puts "The number is between 50-100."
elsif number > 100
  puts "The number is above 100."
else
  puts "Please pick a number from 0 and above."
end

=end
