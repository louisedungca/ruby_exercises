class Book
  # attr_accessor :title, :author, :genre

  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
    @available = true
  end

  def checkout_book
    if @available
      process_checkout
      puts "Book checked out successfully. Enjoy reading #{@title} by #{@author}!"
    else
      puts "Sorry, the book was already borrowed."
    end
  end

  def return_book
    if @available
      puts "This book is not checked out. No need to return."
    else
      process_return
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
    @available = false
    puts "Processing checkout: #{@title}..."
  end

  def process_return
    @available = true
    puts "Processing return: #{@title}..."
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
