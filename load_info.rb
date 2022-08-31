require 'json'
require './book'

def init_files
    File.write('./store/books.json', '[]') unless File.exist?('./store/books.json')
end

def load_books
    books = []
    books_store = JSON.parse(File.read('./store/books.json'))
    books_store.each do |book|
        books << Book.new(book['title'], book['author'])
    end
    books
end