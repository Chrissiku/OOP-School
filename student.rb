require_relative 'person'

# Class Student inherits from Person
class Student < Person
  # Constructor
  def initialize(age, name = 'Unknown', parent_permission = true, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  # Method play_hooky
  def play_hooky
    "¯\(ツ)/¯"
  end
  
  # Method add_to_classroom
  def add_to_classroom(classroom)
    @classroom = classroom
    classroom.student << self unless classroom.student.include?(self)
  end
end


