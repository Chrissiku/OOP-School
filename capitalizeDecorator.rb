require 'baseDecorator'

class CapitalizeDecorator < Decorator
    #Method correct_name is overridden from Decorator class    
    def correct_name
        @nemeable.correct_name.capitalize
    end
end