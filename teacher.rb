require_relative 'person'

# Class Teacher inherits from Person
class Teacher < Person
  # Constructor
  def initialize(age, specialization, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  # Method can_use_services?
  def can_use_services?
    true
  end
end
