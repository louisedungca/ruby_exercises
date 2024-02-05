## ruby disemvowel_trolls.rb
# remove all of the vowels from the trolls' comments, neutralizing the threat.
# Your task is to write a method that takes a string and return a new string with all vowels removed.
def disemvowel_trolls(str)
  vowels_arr = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
  final_str = ""

  str.each_char do |char|
    if vowels_arr.none?{ |vowel| vowel == char }
      final_str += char
    end
  end

  p final_str
end


disemvowel_trolls("The website is for losers LOL!")
disemvowel_trolls("Hello, World!")
disemvowel_trolls("Try to remove the vowels here.")
