require 'spec_helper'

describe Book do
    before :each do
        @book = Book.new "Title", "Author"
    end

    describe "#new" do
        it "Take 2 parameters and returns a Book object" do
            @book.should be_an_instance_of Book
        end
    end
end