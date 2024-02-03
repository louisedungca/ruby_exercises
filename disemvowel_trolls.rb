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
