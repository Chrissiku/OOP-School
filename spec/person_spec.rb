require 'spec_helper'

describe Person do
    before :each do
        @person = Person.new 25, 'chris'
    end

    # Test the instance of Book
    describe "#new" do
        it "Take parameters and returns a Person object" do
            @person.should be_an_instance_of Person
        end
    end 

    # Test the age of the person
    describe '#age' do
        it 'Returns the age' do
          expect(@person.age).to eql 25
        end
    end
    
    # Test the name of the person
    describe '#name' do
        it 'Returns the name' do
            expect(@person.name).to eql 'chris'
        end
    end

    # Test the method can_use_services?
    describe '#can_use_services?' do
        it 'Returns true if the person\'s age > 18= or has the permission' do
            expect(@person.can_use_services?).to be true
        end
    end

    # Test the method rent_book
    describe '#add_rental' do
        it 'Returns a rental of the book' do
            expect(@person.add_rental('2022/09/01', Person.new(01, 'chris'))).to be_an_instance_of Rental
        end
    end

end