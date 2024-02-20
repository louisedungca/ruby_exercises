## ruby vowel_code.rb // the vowel code
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
  encoded_str = str.chars.map { |char| VOWELS[char] || char }.join
  encoded_str
end

def decode(encoded_str)
  decoded_str = encoded_str.chars.map { |char| VOWELS.key(char.to_i) || char }.join
  decoded_str
end

p encode("hello")
p decode("h3 th2r2")
