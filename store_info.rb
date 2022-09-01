module Store_data
    def load_file
        #compute books file
        books_json_file = File.exist?('./store/books.json') ? File.read('./store/books.json') : '[]'
        book_hash = JSON.parse(books_json_file)
        update_books_hash(book_hash)
        people_json_file = File.exist?('./store/people.json') ? File.read('./store/people.json') : '[]'
        people_hash = JSON.parse(people_json_file)
        update_people_hash(people_hash)

        # compute people file
        
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
            @people << Teacher.new(people_h['name'], people_h['age'], people_h['specialization']) if people_h['class'] == 'Teacher'
        end
    end
end