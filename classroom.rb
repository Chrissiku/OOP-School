class Classroom
    attr_accessor :label, :students

    def initialize(label)
        @label = label
        @students = []
    end
    
    # Method add_student
    def add_student(student)
        @students.push(student)
    end
end