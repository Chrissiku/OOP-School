require_relative 'baseDecorator'

class TrimmerDecorator < Decorator
    # Method correct_name is overridden from Decorator class
    def correct_name
        @nemeable.correct_name[0..10]
    end
end