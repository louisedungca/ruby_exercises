## 8.1 Reverse every other word in the string
# Reverse every other word in a given string, then return the string. Throw away any leading or trailing whitespace, while ensuring there is exactly one space between each word.
# Punctuation marks should be treated as if they are a part of the word in this challenge.

def reverse_alternate(str)
  string_arr = str.strip.split(" ")

  str_to_reverse = string_arr.select.with_index { |str, idx| idx.odd? }
  str_to_reverse.each do |str|
    # from reverse_string coding challenge
    reversed_str = ""
    i = str.size - 1

    until i < 0 do
      reversed_str << str[i]
      i -= 1
    end

    string_arr[string_arr.index(str)] = reversed_str
  end

# OR
  # string_arr.each_with_index do |str, idx|
  #   string_arr[idx] = str.reverse if idx.odd?
  # end

  string_arr.join(" ")
end

## Execute
p reverse_alternate("Did it work?") # => "Did ti work?"
p reverse_alternate("") # => ""
p reverse_alternate("Hello madlang pipol mabuhay!")
