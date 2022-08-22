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

end