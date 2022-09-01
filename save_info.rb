module Save_info
    def save_info
        books_hash = []
        people_hash = []
        to_hash(books_hash, people_hash)
        File.open('./store/books.json', 'w') { |file| file.puts books_hash.to_json }
        File.open('./store/people.json', 'w') { |f| f.puts people_hash.to_json }  
    end

    def to_hash(book_h,person_hash)
        # convert books to hash
        @books.each do |book|
            book_h << {title: book.title, author: book.author}
        end
        # convert people to hash
        @people.each do |person|
            if person.instance_of?(::Student)
                person_hash << {class: person.class, name: person.name, age: person.age, id: person.id}
            else
                person_hash << {class: person.class, name: person.name, age: person.age, id: person.id}
            end
        end
    end
end