## Count letters in string
# In this challenge, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'.
# The key must be 'symbol' instead of string.

def letter_count(str)
  lowercase_counter = Hash.new(0)

  str.gsub(" ", "").each_char do |char|
    next unless char.match?(/[a-z]/)
    lowercase_counter[char.to_sym] += 1
  end

  lowercase_counter
end


## Execute
p letter_count('arithmetics') # => {:a => 1, :c => 1, :e=> 1, :h => 1, :i => 2, :m => 1, :r => 1, :s => 1, :t => 1}
p letter_count('This is a String')
