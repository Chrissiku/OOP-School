require './app'
class Main_app
  puts 'Welcome to School Library App!'
  def self.options
    puts "\n"
    puts 'Please choose an option by entering a number'
    puts "\n"
    # Menu options
    @menu = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => "List all rentals for a given person\'s id",
      '7' => 'Exit'
    }

    # Display all menu options
    @menu.each do |key, menu|
      puts "#{key} - #{menu}"
    end
    # Get user selected option
    Integer(gets.chomp)
  end
  # Instatiate App class for a given option
  app = App.new

  loop do
    case options
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals
    when 7
      puts "\n"
      puts 'Thank you for using this app!'
      puts "\n"
      exit
    else
      puts "\n"
      puts 'Invalid option.'
      puts 'Enter a number between 1 and 7'
    end
  end
end

# Method to call the app
def main_call
  Main_app.new
end

# call the method to call the app
main_call
