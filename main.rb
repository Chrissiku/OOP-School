require './app'

class Main_app
    def self.options 
        puts "Welcome to School Library App!"
        puts"\n"
        puts "Please choose an option by entering a number :" 
        # Menu options
        @menu = {
            "1" => "List all books",
            "2" => "List all people",
            "3" => "Create a person",
            "4" => "Create a book",
            "5" => "Create a rental",
            "6" => "List all rentals for a given person\'s id",
            "7" => "Exit"
        }

        # Display all menu options
        @menu.each do |key, menu|
            puts "#{key} - #{menu}"
        end
        # Get user selected option
        Integer(gets.chomp)
    end
    # Instatiate App class for a given option
    selected_option = App.new

    loop do 
        case options
        when 1
            selected_option.list_books
        when 2
            selected_option.list_people
        when 3
            selected_option.create_person
        when 4
            selected_option.create_book
        when 5
            puts "Create rental"
        when 6
            puts "List all rentals for a given person\'s id"
        when 7
            puts "Thank you for using this app!"
            exit
        else
            puts "Invalid option."
            puts "Enter a number between 1 and 7"
            puts "\n"
        end
    end
end

# Method to call the app
def main_call  
    Main_app.new
end

# call the method to call the app 
main_call

