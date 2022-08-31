require 'json'

module Preserve_books

    #Store books method

    def store_book(books)
        data = []
        file = './store/book.json'
        
        !(File.exist?(file) && File.read(file) != '') && File.write(file, '[]')
        return unless File.exist?(file)

        books.each do |book|
          data << {title:book.title, author: book.author}
        end
        File.write(file, JSON.generate(data))
    end
    #Load books method
    def load_books
      data = []
      file = './store/book.json'
      !(File.exist?(file) && File.read(file) != '') && File.write(file, '[]')
      return data unless File.exist?(file) && File.read(file) != ''

      JSON.parse(File.read(file)).each do |book|
        data << Book.new(book['title'], book['author'])
      end
    end
end