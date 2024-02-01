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

unique_in_order('AAAABBCCDAABBB')
unique_in_order('ABBCcAD')
unique_in_order([1,2,2,3,3])
