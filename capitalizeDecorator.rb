require_relative 'base_decorator'

class CapitalizeDecorator < Decorator
    #Method correct_name is overridden from Decorator class    
    def correct_name
        @nameable.correct_name.capitalize
    end
end
