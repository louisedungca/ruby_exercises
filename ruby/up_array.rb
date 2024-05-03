## +1 Array
# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.
# - the array can't be empty
# - only non-negative, single digit integers are allowed
# Return nil for invalid inputs.

def up_array(arr)
  # validation: the array can't be empty
  return nil unless arr.size > 0

  # validation: only non-negative, single digit integers are allowed
  return nil unless arr.all? { |num| (0..9).include?(num) }

  int = arr.join("").to_i
  int += 1

  new_arr = int.to_s.split("")
  new_arr
end

## Execute
p up_array([2, 3, 9]) # => [2, 4, 0]
p up_array([4, 3, 2, 5]) # => [4, 3, 2, 6]
p up_array([23, 2, 3])
p up_array([])
