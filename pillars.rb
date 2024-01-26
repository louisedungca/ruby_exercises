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
  attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
    @available = true
  end

  def checkout_book
    if @available
      @available = false
      puts "Book checked out successfully. Enjoy reading #{@title} by #{@author}!"
    else
      puts "Sorry, the book was already borrowed."
    end
  end

  def return_book
    if @available
      puts "This book is not checked out. No need to return."
    else
      @available = true
      puts "Book returned. Thank you for returning #{@title} by #{@author}!"
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
  end

  def process_return
    puts "Processing return: #{@title}..."
  end
end

book = Book.new("This Is A Book", "Author Name", "Non-fiction")

puts "[Book Information]"
book.display_info

puts "Trying to checkout the book..."
book.checkout_book

puts "Trying to checkout the book again..."
book.checkout_book

puts "Returning the book..."
book.return_book

puts "Trying to return the book again..."
book.return_book

# Create objects that implements Polymorphism by Inheritance and Duck-typing
# Polymorphism - Inheritance

class EBook < Book

  def initialize(title, author, genre, format)
    super(title, author, genre)
    @format = format
    @downloaded = false
  end

  def download
    if @downloaded
      puts "You've already downloaded the e-book #{@title} in #{@format} format."
    else
      @downloaded = true
      puts "E-book downloaded successfully in #{@format} format. Enjoy reading #{@title} by #{@author}!"
    end
  end

  def display_info
    super
    puts "Format: #{@format}"
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

class DVD
  def initialize(title, director, genre)
    @title = title
    @director = director
    @genre = genre
  end

  def display_info
    puts "[DVD Details]
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
dvd_1 = DVD.new("Movie Title", "Director A", "Action")
magazine_1 = Magazine.new("Magazine Title", "Sports")

library_catalog.display_details(book_1)
library_catalog.display_details(dvd_1)
library_catalog.display_details(magazine_1)
