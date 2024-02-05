## unique in order
# Implement the method unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
def unique_in_order(input)
  arr = input.instance_of?(String) ? input.chars : input

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
