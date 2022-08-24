require_relative 'book'
class App
    def initialize
        @books = []
        @people = []
        @rentals = []
    end

# ------------Books------------------

    # Create book method
    def create_book
        print "Title : "
        title = gets.chomp
        print "Author : "
        author = gets.chomp

        #Book instance
        book = Book.new(title, author)
        @books.push(book)
    end
end
