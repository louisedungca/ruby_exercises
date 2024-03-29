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



## Enough is enough!
# Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering.
# For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].

def delete_nth()
end

# Execute:
delete_nth([1, 1, 1, 1], 2) # => [1,1]
delete_nth([20, 37, 20, 21], 1) # [20, 37, 21]

=end

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
