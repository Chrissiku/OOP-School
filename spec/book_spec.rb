require 'spec_helper'

describe Book do
    # Instantiate the Book class
    before :each do
        @book = Book.new "Title", "Author"
    end

    # Test the instance of Book
    describe "#new" do
        it "Take 2 parameters and returns a Book object" do
            @book.should be_an_instance_of Book
        end
    end

    # Tesst The title of the book
    describe '#title' do
        it "Returns the title of the book" do
            @book.title.should eql "Title"
        end
    end

    # Test the author of the book
    describe '#author' do
        it "Returns the author of the book" do
            @book.author.should eql "Author"
        end
    end
end