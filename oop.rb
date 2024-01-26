# Find the smallest integer in an array

arr = [25, 8, -8, 1]

def find_smallest_int(arr)
  ref_int = arr[0]
  arr.each do |int|
    ref_int = int if int < ref_int
  end
  ref_int
end

p find_smallest_int(arr)


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

  def show_details
    puts "Book: #{@title} by #{@author} (Genre: #{@genre})"
  end

  def currently_reading
    puts "Reading now: #{@title}"
  end
end

book_1 = Book.new('Le Petit Prince', 'Antoine Exupery', 'fiction')

book_1.show_details
book_1.currently_reading
