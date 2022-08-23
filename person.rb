#require Nemeable methoh
require_relative 'nemeable'
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

puts Person.new( name:'Chris', age:20, parent_permission: false).name # Chris