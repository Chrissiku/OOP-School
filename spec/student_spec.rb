require 'spec_helper'

describe Student do

    # The student should inherit from Person
    it 'Inherit from Person' do
        expect(Student.superclass).to eq Person
    end

    # Instantiate the Student class.
    before :each do
        @student = Student.new 20, 2, 'chris'
    end

    # Test the isntance of Student
    describe "#new" do
        it "Take 3 parameters and returns a Student object" do
            @student.should be_an_instance_of Student
        end
    end

    # Test the age of the student
    describe '#age' do
        it 'Returns the age' do
            expect(@student.age).to eql 20
        end
    end

    # Test the name of the student
    describe '#name' do
        it 'Returns the name' do
            expect(@student.name).to eql 'chris'
        end
    end

    # Test the classroom of the student
    describe '#classroom' do
        it 'Returns the classroom' do
            expect(@student.classroom).to eql 2
        end
    end
end