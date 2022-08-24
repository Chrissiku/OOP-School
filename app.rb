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

    # List all books method
    def list_books
        if @books.empty?
            puts "No books in the library"
            return
        end
        @books.each do |book|
            puts "Title : #{book.title} | Author : #{book.author}"
        end
    end
end
