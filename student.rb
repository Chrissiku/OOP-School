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
end
