## Nathan loves cycling
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling. You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

=begin
def get_litres(time)
  litres = time * 0.5
  litres.floor
end

# p get_litres(3)

## isogram checker
def is_isogram(word)
  unique_chars = []

  word.downcase.each_char do |char|
    return false if unique_chars.any? { |letter| letter == char }
    unique_chars.push(char)
  end

  true
end

# p is_isogram("greek")
# p is_isogram("louise")

## unique in order
# Implement the method unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
def unique_in_order(input)
  arr = input.is_a?(String) ? input.chars : input

  return [] if arr.empty?

  filtered_arr = [arr[0]]

  arr.each_with_index do |char, idx|
    next if idx == 0
    filtered_arr.push(char) unless char == filtered_arr.last
  end

  p filtered_arr
end

# unique_in_order('AAAABBCCDAABBB')
# unique_in_order('ABBCcAD')
# unique_in_order([1,2,2,3,3])


## disemvowel trolls
# remove all of the vowels from the trolls' comments, neutralizing the threat.
# Your task is to write a method that takes a string and return a new string with all vowels removed.
def remove_vowels(str)
  vowels_arr = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
  final_str = ""

  str.each_char do |char|
    if vowels_arr.none? { |vowel| vowel == char }
      final_str += char
    end
  end

  p final_str
end

# remove_vowels("Hello, World!")
# remove_vowels("Try to remove the vowels here.")
# remove_vowels("You can still read this without the vowels -123???")


## Century from Year
# Given a year, return the century it is in.
# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.
def centuryFromYear(year)
  number = year / 100

  if year % 100 != 0
    p number.to_i + 1
  else
    p number
  end
end

centuryFromYear(1705)
centuryFromYear(1900)
centuryFromYear(1601)
centuryFromYear(2000)

## Format a string of names like 'Bart, Lisa & Maggie'
# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
def list(data)
  return "" if data.empty?

  names_arr = data.map { |item| item[:name] }

  if /^[A-Za-z\.\-]+$/.match?(names_arr.join)
    last_name = names_arr.pop

    if names_arr.empty?
      puts last_name
    else
      puts "#{names_arr.join(", ")} & #{last_name}"
    end
  else
    puts "Invalid input. Please only use letters and special characters: '-', '.' for name."
  end
end

data = [
  { name: "Bart" },
  { name: "Lisa" },
  { name: "Maggie" },
  { name: "Marge123" },
]

list(data)



## the vowel code
# Step 1: Create a function called encode() to replace all the lowercase vowels in a given string with numbers according to the following pattern: a -> 1, e -> 2, i -> 3, o -> 4, u -> 5
# Step 2: Now create a function called decode() to turn the numbers back into vowels according to the same pattern shown above.
VOWELS = {
  "a" => 1,
  "e" => 2,
  "i" => 3,
  "o" => 4,
  "u" => 5,
}

def encode(str)
  encoded_str = str.downcase.chars.map { |char| VOWELS[char] || char }.join
  p encoded_str
end

def decode(encoded_str)
  decoded_str = encoded_str.downcase.chars.map { |char| VOWELS.key(char.to_i) || char }.join
  p decoded_str
end

encoded_str = encode("hello")
decode(encoded_str)


## Find the unique number
# There is an array with some numbers. All numbers are equal except for one. Try to find it!
def find_uniq(arr)
  counts = Hash.new(0)

  arr.each do |num|
    counts[num] += 1
  end

  counts.find { |num, count| p num if count == 1 }

end

find_uniq([1, 1, 1, 2, 1, 1])
find_uniq([0, 0, 0.55, 0, 0])


## Find the middle element
# create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements
# The input to the function will be an array of three distinct numbers (Haskell: a tuple)

#  check 1st int and see if 1st_int > 2nd_int
#  true: check if int < 3rd_int
#  false: check if int > 3rd_int
#  if last check is true, 1st_int is middle int, print idx of current int
#  if not pass, continue to the 2nd_int
#  check if 2nd_int > 3rd_int
#  if true: check if 2nd_int < 1st_int
#  if false: check if 2nd_int > 1st_int
#  if last check is true, 2nd_int is middle int, print 2nd_int idx
#  if not true, print 3rd_int idx

def gimme(arr)
  arr.each_with_index do |current_int, idx|
    second_int = arr[(idx + 1) % arr.size]
    third_int = arr[(idx + 2) % arr.size]

    if current_int > second_int
      if current_int < third_int
        p idx
        return
      end

    else
      if current_int > third_int
        p idx
        return
      end
    end

  end
end

## Execute:
gimme([2, 3, 1])   # => 0
gimme([5, 10, 14]) # => 1


## String Incrementer
# Your job is to write a method which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.

# Note: If the number has leading zeros the amount of digits should be considered.

# check if str last letter has number after it
# if false: add "1" on str
# if true: separate letters from num
# get num, convert to int, add 1
# convert back to num back to str
# append with letters

def str_incrementer(str)
  arr = str.scan(/\d+|[a-zA-Z]+/)
  num = arr[-1].to_i + 1

  if arr.size > 1
    arr.pop
  end

  arr << num
  p arr.join
end

str = "foo123"
str_incrementer(str)




## 6.3 Sorted? yes? no? how?
# Complete the method which accepts an array of integers, and returns one of the following:
# "yes, ascending" - if the numbers in the array are sorted in an ascending order
# "yes, descending" - if the numbers in the array are sorted in a descending order
# "no" - otherwise
# Note: You can assume the array will always be valid, and there will always be one correct answer

def sorted(int_arr)
  return "Please enter an array of integers." unless int_arr.instance_of?(Array)
  sort_arr = int_arr.sort

  case
  when int_arr == sort_arr
    "yes, ascending"
  when int_arr == sort_arr.sort { |a, b| b <=> a }
    "yes, descending"
  else
    "no"
  end
end


p sorted([5, 4, 3, 2, 1])
p sorted([1, 2, 3, 4])
p sorted([1, 2, 4, 3])
p sorted("1 2 3 4")


## 6.4 IQ TEST
# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from
# the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he
# needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
# Note: Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

def iq_test(given_num)
  if given_num.instance_of?(String)
    return "Invalid input. String must contain only numbers." unless given_num.match(/\A[\d\s]+\z/)
    arr_num = given_num.split.map { |n| n.to_i }
  elsif given_num.instance_of?(Array)
    return "Invalid input. Array must contain only numbers." unless given_num.all? { |item| item.is_a?(Integer) }
    arr_num = given_num
  else
    return "Invalid input type. Please enter a string or an array of numbers."
  end

  even_count = arr_num.count { |n| n.even? }
  odd_count = arr_num.count { |n| n.odd? }

  if even_count == 1
    even_idx = arr_num.index { |n| n.even? }
    return even_idx + 1 # Note: Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
  elsif odd_count == 1
    odd_idx = arr_num.index { |n| n.odd? }
    return odd_idx + 1 # Note: Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
  else
    "The set of numbers are either all even or all odd."
  end
end

## Execute:
p iq_test("2 4 7 8 10") # => 3 The third number is odd, while the rest of the numbers are even
p iq_test("1 2 1 1") # => 2 The second number is even, while the rest of the numbers are odd

p iq_test([1, 1, 2, 1])
p iq_test(" 1 s 3  3")
p iq_test([1, 3, 5, 7])


## 7.0 Count letters in string
# In this challenge, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and
# count as 'value'. The key must be 'symbol' instead of string.

def letter_count(str)
  lowercase_counter = Hash.new(0)

  str.gsub(" ", "").each_char do |char|
    next unless char.match?(/[a-z]/)
    lowercase_counter[char.to_sym] += 1
  end

  lowercase_counter
end

p letter_count('arithmetics') # => {:a => 1, :c => 1, :e=> 1, :h => 1, :i => 2, :m => 1, :r => 1, :s => 1, :t => 1}
p letter_count('This is a String')


## 8.0 +1 Array
# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.
# - the array can't be empty
# - only non-negative, single digit integers are allowed
# Return nil for invalid inputs.

def up_array(arr)
  # validation: the array can't be empty
  return nil unless arr.size > 0

  # validation: only non-negative, single digit integers are allowed
  return nil unless arr.all? { |num| (0..9).include?(num) }

  int = arr.join("").to_i
  int += 1

  new_arr = int.to_s.split("")
  new_arr
end

## Execute
p up_array([2, 3, 9]) # => [2, 4, 0]
p up_array([4, 3, 2, 5]) # => [4, 3, 2, 6]
p up_array([23, 2, 3])
p up_array([])


## 8.3 Detect Pangram
# A pangram is a sentence that contains every single letter of the alphabet at least once.
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def pangram?(sentence)
  return "Please use letters for numerical values." if sentence.match?(/\d/)
  formatted_sentence = sentence.gsub(/[^a-zA-Z]/, '').downcase
  return false if formatted_sentence.size < 26

  counter = Hash.new(0)
  formatted_sentence.each_char { |char| counter[char] += 1 }
  counter.size == 26 ? true : false
end

## Execute:
p pangram?("The quick brown fox jumps over the lazy dog") # => true
p pangram?("This is not a pangram") # => false
p pangram?("The quick brown fox jumps over the lazy dog with special characters! :)")
p pangram?("A week has 7 days.")


=end
