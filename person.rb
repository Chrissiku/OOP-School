# create a class called person
class Person
    attr_reader :id
    attr_accessor :name, :age

    # initialize the class person 
    def initialize(name = "Unknown", age,  parent_permission = true)
        @id = rand(1..1000)
        @name = name
        @age = age
    end
    
    # Private method is_of_age?
    def is_of_age?
        @age >= 18
    end
    private :is_of_age?

    # Public method can_use_services?
    def can_use_services?
        is_of_age? || @parent_permission
    end
    public :can_use_services?

end