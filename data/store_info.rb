module Store_data
    def load_file
        books_json_file = File.exist?('./store/books.json') ? File.read('./store/books.json') : '[]'
        book_hash = JSON.parse(books_json_file)
        update_books_hash(book_hash)
    end

    def update_books_hash(book_h_array)
        return if book_h_array == []

        book_h_array.each do |book_h|
            @books << Book.new(book_h['title'], book_h['author'])
        end
    end
end