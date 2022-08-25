require_relative 'rental'
class Book
  attr_reader :rentals
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # Method add_rental
  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
