# Find the smallest integer in an array

arr = [25, 8, -8, 1]

def find_smallest_int(arr)
  return nil if arr.empty?

  ref_int = arr[0]
  arr.each do |int|
    ref_int = int if int < ref_int
  end
  ref_int
end

p find_smallest_int(arr)

## or:

def find_lowest_integer(arr)
  return nil if arr.empty?

  min_value = arr[0]
  left_index = 0
  right_index = arr.length - 1

  while left_index <= right_index
    mid_index = (left_index + right_index) / 2
    mid_value = arr[mid_index]

    if mid_value < min_value
      min_value = mid_value
    end

    if mid_value < arr[right_index]
      right_index = mid_index - 1
    else
      left_index = mid_index + 1
    end
  end

  min_value
end

p find_lowest_integer(arr)


# Simple class example

class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

# Create your own object with attributes and methods

class Book
  attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  def display_info
    puts "Book: #{@title} by #{@author} (Genre: #{@genre})"
  end

  def currently_reading
    puts "Reading now: #{@title}"
  end
end

book_1 = Book.new('Le Petit Prince', 'Antoine Exupery', 'fiction')

book_1.display_info
book_1.currently_reading
