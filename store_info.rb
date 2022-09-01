module Store_data
  def load_file
    books_json_file = File.exist?('./store/books.json') ? File.read('./store/books.json') : '[]'
    people_json_file = File.exist?('./store/people.json') ? File.read('./store/people.json') : '[]'
    rental_json_file = File.exist?('./store/rentals.json') ? File.read('./store/rentals.json') : '[]'
    book_hash = JSON.parse(books_json_file)
    people_hash = JSON.parse(people_json_file)
    rental_hash = JSON.parse(rental_json_file)
    update_books_hash(book_hash)
    update_people_hash(people_hash)
    update_rental_hash(rental_hash)
  end

  # Update books hash
  def update_books_hash(book_h_array)
    return if book_h_array == []

    book_h_array.each do |book_h|
      @books << Book.new(book_h['title'], book_h['author'])
    end
  end

  # Update people hash
  def update_people_hash(people_h_array)
    return if people_h_array == []

    people_h_array.each do |people_h|
      @people << Student.new(people_h['name'], people_h['age']) if people_h['class'] == 'Student'
      if people_h['class'] == 'Teacher'
        @people << Teacher.new(people_h['name'], people_h['age'],
                               people_h['specialization'])
      end
    end
  end

  # Check if book is available
  def check_books_for_rent(rental)
    @books.each do |book|
      @book_r = book if rental['book_title'] == book.title
    end
  end

  # Check if person is available
  def check_people_to_rent(rental)
    @books.each do |book|
      @person_r = book if rental['book_title'] == book.title
    end
  end

  # Update rental hash
  def update_rental_hash(rental_h_array)
    rental_h_array.each do |rental|
      check_books_for_rent(rental)
      check_people_to_rent(rental)
      @people.each do |person|
        @person_r = person if rental['person'] == person.name
      end
      @rentals << Rental.new(rental['date'], @book_r, @person_r) if @book_r && @person_r
    end
  end
end
