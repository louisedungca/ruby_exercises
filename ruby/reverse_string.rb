# ruby reverse_string.rb

# Implement reverse method that takes a string as its input and returns its reverse as the output.
# Avoid using built-in methods that directly solve the problem.

def reverse_string(str)
  reversed_str = ""
  i = str.size - 1

  until i < 0 do
    reversed_str << str[i]
    i -= 1
  end

  reversed_str
end

p reverse_string("string")

## Notes
# print the last char first and first char last:
# e.g. str = "string", str[0] = "s" (first), str[str.size - 1] = g (last char)
# loop through the string and append from str.size - 1 down to 0
