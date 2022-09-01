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

    # Test the rentals method of the book
    describe '#add_rental' do
        it 'Should add a new rental of the book' do
            expect(@book.add_rental('2022/09/01', Person.new(01, 'chris'))).to be_an_instance_of Rental
            expect(@book.rentals.length).to eql 1
        end
    end
end