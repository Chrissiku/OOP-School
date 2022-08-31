require 'json'
require './book'

def save_data(books)
    save_books(books)
end

def save_books(books)
    books_store = []
    books.each do |book|
        books_store << {title:book.title, author:book.author}
    end
    rb_data = JSON.generate(books_store)
    File.write('./store/books.json', rb_data.to_s)
end