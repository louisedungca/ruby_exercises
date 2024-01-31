## ruby isograms.rb
# isogram checker
def is_isogram(word)
  checked_chars = []

  word.downcase.each_char do |char|
    return false if checked_chars.any? { |letter| letter == char }
    checked_chars.push(char)
  end

  true
end

p is_isogram("dfhk12r")
p is_isogram("louise")
