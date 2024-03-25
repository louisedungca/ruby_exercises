# ruby middle_element.rb
## Find the middle element
# create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements
# The input to the function will be an array of three distinct numbers (Haskell: a tuple)

def gimme(arr)
  sorted_arr = arr.sort
  arr.index(sorted_arr[1])
end

## Execute:
p gimme([2, 3, 1])   # => 0
p gimme([5, 10, 14]) # => 1
p gimme([16, 2, 8])  # => 2


# or

def middle_element(arr)
  arr.each_with_index do |current_int, idx|
    second_int = arr[(idx + 1) % arr.size] # e.g. arr[(2 + 1) % 3] = arr[0]
    third_int = arr[(idx + 2) % arr.size]

    if current_int > second_int
      if current_int < third_int
        return idx
      end

    else
      if current_int > third_int
        return idx
      end
    end

  end
end

p middle_element([2, 3, 1])
p middle_element([5, 10, 14])
p middle_element([16, 2, 8])

## Notes:
#  greater int > middle int < lesser int => middle > one int && < the other int
#  check 1st int and see if 1st_int > 2nd_int
#  true: check if int < 3rd_int
#  false: check if int > 3rd_int
#  if last check is true, 1st_int is middle int, print idx of current int
#  if not pass, continue to the 2nd_int
#  check if 2nd_int > 3rd_int
#  if true: check if 2nd_int < 1st_int
#  if false: check if 2nd_int > 1st_int
#  if last check is true, 2nd_int is middle int, print 2nd_int idx
#  if not true, print 3rd_int idx
