require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
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
    # create student method
    def create_student
        print "Name : "
        name = gets.chomp
        print "Age : "
        age = gets.chomp

        student = Student.new(age, nil, name)
        @people.push(student)

        puts "New student created successfully"
    end

    # create teacher method
    def create_teacher
        print "Name : "
        name = gets.chomp
        print "Age : "
        age = gets.chomp
        print "Specialization : "
        specialization = gets.chomp
        teacher = Teacher.new(age, specialization, name)
        @people.push(teacher)
        puts "New teacher created successfully"
    end

    # Create person method
    def create_person
        print "Do you want to create a student (1) or a teacher (2) ? [Input a number] : "
        choice = gets.chomp
        case choice
        when "1"
            create_student
        when "2"
            create_teacher
        else
            puts "Please enter a valid number [1 or 2]"
            return
        end
        puts "Person created successfully"
    end

    # List all people method
    def list_people
        if @people.empty?
            puts "No person is registered in the library"
            puts "\n"
            return
        end
        @people.each do |person|
            puts "[#{person.class}] Name : #{person.name} | ID : #{person.id} | Age : #{person.age}"
        end
    end

# ------------Rentals------------------
    # Create rental method
    def create_rental
        if @books.size.zero?
            puts "No books in the library"        
      elsif @people.size.zero?
            puts "No People registered in the library"        
      else
        puts "Selecct a book form the following list by number"
        @books.each_with_index do |book, index|
            puts "#{index} - Book Title : #{book.title} | Author : #{book.author}"
        end   
        rent_book = gets.chomp.to_i
        puts "Select a person form the following list by number (not id)"        
        @people.each_with_index do |person, index|
            puts "#{index} - Name : #{person.name} |ID : #{person.id} | Age : #{person.age}"
        end
        rental_person = gets.chomp.to_i
        print "Date (YYYY/MM/DD) : "
        date = gets.chomp.to_s

        # Instantiating a rental object
        rental_info = Rental.new(date, @books[rent_book], @people[rental_person])
        @rentals.push(rental_info)
        puts "Rental created successfully"
      end
    end
end
