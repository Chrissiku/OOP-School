class Book
  attr_reader :rental
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rental =[]
  end

  # Method add_rental
  def add_rental(rental)
    @rental.push(rental)
  end
end
