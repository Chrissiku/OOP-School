#require Nemeable methoh
require_relative 'nameable'
require_relative 'capitalizeDecorator'
require_relative 'trimmerDecorator'
require_relative 'base_decorator'
# create a class called person
class Person < Nameable
    attr_reader :id
    attr_accessor :name, :age, :parent_permission

    # initialize the class person 
    def initialize(age:, parent_permission:true, name:"Unknown")
        @id = rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
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

    # Public method correct_name
    def correct_name
        return @name
    end
end

# Example of a decorator class
person = Person.new( name:'maximilianus', age:22)
puts person.correct_name

capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name