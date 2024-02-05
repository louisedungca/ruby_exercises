## Nathan loves cycling
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling. You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
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
    if !vowels_arr.include?(char)
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
