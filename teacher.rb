require_relative 'person'

# Class Teacher inherits from Person
class Teacher < Person
    # Constructor
    def initialize(age, name = "Unknown", parent_permission = true, specialization)
        super(name, age, parent_permission)
        @specialization = specialization
    end
end
