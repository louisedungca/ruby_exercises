# Nathan loves cycling. Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
# You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
def get_litres(time)
  litres = time * 0.5
  litres.floor
end

# p get_litres(3)


# isogram checker
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
