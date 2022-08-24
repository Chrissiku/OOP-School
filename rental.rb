class Rental
    attr_accessor :date, :book, :person

    def initialize(date, book, person)
        @date = date
        @book = book
        @person = person
        bool.rental << self
        person.rental << self
    end

end