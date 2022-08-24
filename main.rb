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
end

# Method to call the app
def main_call
    Main_app.new
end

# call the method to call the app
main_call

