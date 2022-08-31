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

  # include BooksPersistence

  # Get user input
  def get_input(text)
    print "#{text} : "
    gets.chomp
  end

  # create object
  def create_object(class_name, store, *args)
    store.push(class_name.new(*args))
  end

  # Chech if array is empty
  def is_empty(array)
    array.empty?
  end
  # ------------Books------------------

  # Create book method
  def create_book
    title = get_input('Title')
    author = get_input('Author')
    create_object(Book, @books, title, author)
    puts "\n"
    puts 'New book created successfully'
  end

  # List all books method
  def list_books
    if is_empty(@books)
      puts "\n"
      puts 'No books in the library'
      return
    end
    @books.each do |book|
      puts "Title : #{book.title} | Author : #{book.author}"
    end
  end

  # ------------People------------------
  # create student method
  def create_student
    name = get_input('Name')
    age = get_input('Age')

    create_object(Student, @people, age, nil, name)
    puts "\n"
    puts 'New student created successfully'
  end

  # create teacher method
  def create_teacher
    name = get_input('Name')
    age = get_input('Age')
    specialization = get_input('Specialization')
    create_object(Teacher, @people, age, specialization, name)
    puts "\n"
    puts 'New teacher created successfully'
  end

  # Create person method
  def create_person
    puts "\n"
    print 'Do you want to create a student (1) or a teacher (2) ? [Input a number] : '
    puts "\n"
    choice = gets.chomp
    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts "\n"
      puts 'Please enter a valid number [1 or 2]'
      puts "\n"
      return
    end
    puts "\n"
    puts 'Person created successfully'
  end

  # List all people method
  def list_people
    if is_empty(@people)
      puts "\n"
      puts 'No person is registered in the library'
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
      puts 'No books in the library'
    elsif @people.size.zero?
      puts 'No People registered in the library'
    else
      puts "\n"
      puts 'Selecct a book form the following list by number'

      @books.each_with_index do |book, index|
        puts "#{index}) - Book Title : #{book.title} | Author : #{book.author}"
      end
      rent_book = gets.chomp.to_i
      puts "\n"
      puts 'Select a person form the following list by number (not id)'
      puts "\n"
      @people.each_with_index do |person, index|
        puts "#{index}) - Name : #{person.name} |ID : #{person.id} | Age : #{person.age}"
      end
      puts "\n"
      rental_person = gets.chomp.to_i
      print 'Date (YYYY/MM/DD) : '
      date = gets.chomp.to_s

      # Instantiating a rental object
      rental_info = Rental.new(date, @books[rent_book], @people[rental_person])
      @rentals.push(rental_info)
      puts "\n"
      puts 'Rental created successfully'
    end
  end

  # List all rentals method
  def list_rentals
    puts "\n"
    if @rentals.empty?
      puts 'No rent is registered in the library'
    else
      puts 'Select a person form the following list by ID'
      @people.each do |person|
        puts "ID : #{person.id} => #{person.name}"
      end
      puts "\n"
      print "Enter person\'s ID :"
      person = gets.chomp
      puts "\n"
      @rentals.each do |rental|
        if rental.person.id.to_i == person.to_i
          puts "Date : #{rental.date}, Book \"#{rental.book.title}\" by : #{rental.book.author}"
        end
      end
    end
  end
end
