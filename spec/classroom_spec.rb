require 'spec_helper'

describe Classroom do

    # Instantiate the Student class
    before :each do
        @classroom = Classroom.new 2
    end
    
    # Test the instance of Classroom
    describe "#new" do
        it "Take 1 parameter and returns a Classroom object" do
            @classroom.should be_an_instance_of Classroom
        end
    end
    
    # Test the label of the classroom
    describe '#label' do
        it "Returns the label of the classroom" do
            @classroom.label.should eql 2
        end
    end
    
    # Test the students of the classroom
    describe '#students' do
        it "Returns the students of the classroom" do
            @classroom.students.should eql []
        end
    end
end