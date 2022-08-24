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
            puts "\n"
            return
        end
        @books.each do |book|
            puts "Title : #{book.title} | Author : #{book.author}"
        end
    end

# ------------People------------------
    # Create person method
    def create_person
        print "Do you want to create a student (1) or a teacher (2) ? [Input a number] : "
        choice = gets.chomp
        case choice
        when "1"
            puts "Student"
        when "2"
            puts "Teacher"
        else
            puts "Please enter a valid number [1 or 2]"
            return
        end
        puts "Person created successfully"
    end
end
