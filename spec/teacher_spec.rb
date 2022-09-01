require 'spec_helper'

describe Teacher do
    # The teacher should inherit from Person
    it 'Inherit from Person' do
        expect(Teacher.superclass).to eq Person
    end

    # Instantiate the Teacher class.
    before :each do
        @teacher = Teacher.new 40, 'Maths', 'chris'
    end
    
    # Test the isntance of Teacher
    describe "#new" do
        it "Take 3 parameters and returns a Teacher object" do
            @teacher.should be_an_instance_of Teacher
        end
    end
    
    # Test the age of the teacher
    describe '#age' do
        it 'Returns the age' do
            expect(@teacher.age).to eql 40
        end
    end
    
    # Test the name of the teacher
    describe '#name' do
        it 'Returns the name' do
            expect(@teacher.name).to eql 'chris'
        end
    end
end