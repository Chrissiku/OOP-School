module Save_info
  def save_info
    books_hash = []
    people_hash = []
    rentals_hash = []
    to_hash(books_hash, people_hash, rentals_hash)
    File.open('./store/books.json', 'w') { |file| file.puts books_hash.to_json }
    File.open('./store/people.json', 'w') { |f| f.puts people_hash.to_json }
    File.open('./store/rentals.json', 'w') { |f| f.puts rentals_hash.to_json }
  end

  def to_hash(book_h, person_hash, rentals_hash)
    # convert books to hash
    @books.each do |book|
      book_h << { title: book.title, author: book.author }
    end
    # convert people to hash
    @people.each do |person|
      person_hash << end
      { class: person.class, name: person.name, age: person.age, id: person.id }
    end

    # convert rentals to hash
    @rentals.each do |rental|
      rentals_hash << { date: rental.date, book_author: rental.book.author, rent_book: rental.book.title,
                        rental_person: rental.person.name }
    end
  end
end
