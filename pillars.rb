# ruby pillars.rb
# Baked desserts

class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes..."
  end
end

class BananaCake < Confection; end

class Cupcake < Confection
  def prepare
    super
    puts "Applying frosting..."
  end
end

banana_1 = BananaCake.new
chocolate_cupcake = Cupcake.new

p banana_1.class
banana_1.prepare

p chocolate_cupcake.class
chocolate_cupcake.prepare

# Create an object that implements Encapsulation
# Create an object that implements Abstraction

class Book

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
    @available = true
  end

  def checkout_book
    if @available
      process_checkout
    else
      puts "Sorry, the book was already borrowed."
    end
  end

  def return_book
    if @available
      puts "This book is not checked out."
    else
      process_return
    end
  end

  def display_info
    puts "Title: #{@title}
    Author: #{@author}
    Genre: #{@genre}"
  end

  private

  def process_checkout
    puts "Processing checkout: #{@title}..."
    @available = false
    puts "Book checked out successfully. Enjoy reading #{@title} by #{@author}!"
  end

  def process_return
    puts "Processing return: #{@title}..."
    @available = true
    puts "Book returned. Thank you for returning #{@title} by #{@author}!"
  end
end

book_1 = Book.new("This Is A Book", "Author Name", "Non-fiction")
# p book_1.title
puts "[Book Information]"
book_1.display_info

puts "Trying to checkout the book..."
book_1.checkout_book

puts "Trying to checkout the book again..."
book_1.checkout_book

puts "Returning the book..."
book_1.return_book

puts "Trying to return the book again..."
book_1.return_book


# Create objects that implements Polymorphism by Inheritance and Duck-typing
# Polymorphism - Inheritance

class EBook < Book

  def initialize(title, author, genre, format)
    super(title, author, genre)
    @format = format
    @is_downloaded = false
  end

  def download
    if @is_downloaded
      puts "You've already downloaded the e-book #{@title} in #{@format} format."
    else
      download_ebook
    end
  end

  def display_info
    super
    puts "Format: #{@format}"
  end

  private

  def download_ebook
    @is_downloaded = true
    puts "E-book downloaded successfully in #{@format} format. Enjoy reading #{@title} by #{@author}!"
  end
end

ebook = EBook.new("EBook Title", "EBook Author", "Technology", "E-pub")

puts "[EBook Information]"
ebook.display_info

puts "Trying to download the EBook..."
ebook.download

puts "Trying to download the EBook again..."
ebook.download

# Polymorphism - Duck Typing
class Book
  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  def display_info
    puts "[Book Details]
    Title: #{@title}
    Author: #{@author}
    Genre: #{@genre}"
  end
end

class Movie
  def initialize(title, director, genre)
    @title = title
    @director = director
    @genre = genre
  end

  def display_info
    puts "[Movie Details]
    Title: #{@title}
    Director: #{@director}
    Genre: #{@genre}"
  end
end

class Magazine
  def initialize(title, category)
    @title = title
    @category = category
  end

  def display_info
    puts "[Magazine Details]
    Title: #{@title}
    Category: #{@category}"
  end
end

class LibraryCatalog
  def display_details(library_item)
    library_item.display_info
  end
end

library_catalog = LibraryCatalog.new

book_1 = Book.new("Book Title", "Author", "Fiction")
movie_1 = Movie.new("Movie Title", "Director A", "Action")
magazine_1 = Magazine.new("Magazine Title", "Sports")

library_catalog.display_details(book_1)
library_catalog.display_details(movie_1)
library_catalog.display_details(magazine_1)
