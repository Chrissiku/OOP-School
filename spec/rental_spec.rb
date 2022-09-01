require 'spec_helper'

describe Rental do
    before :all do
        @book = Book.new('Title', 'Author')
        @person = Person.new(22, 'chris')
        @rental = Rental.new('2022/09/01', @book, @person)
    end

    describe '#new' do
        it 'should initialize a rental' do
            expect(@rental).to be_an_instance_of Rental
        end
    end

    describe '#date' do
        it 'should have a date' do
            expect(@rental.date).to eq('2022/09/01')
        end
    end

    describe '#book' do
        it 'should have a book' do
            expect(@rental.book).to eq(@book)
        end
    end
    
    describe '#person' do
        it 'should have a person' do
            expect(@rental.person).to eq(@person)
        end
    end
end