module Save_info
    def save_info
        books_hash = []
        to_hash(books_hash)
        File.open('./store/books.json', 'w') { |f| f.puts books_hash.to_json }
    end

    def to_hash(book_hash)
        @books.each do |book|
            book_hash << {title: book.title, author: book.author}
        end
    end
end