class List_infos
    def display_books(books)
        puts "No books in the library" if books.empty?
        books.each do |book|
            puts "Title: #{book.title} | Author: #{book.author}"
        end
    end
end