require_relative 'nemeable'

class Decorator < Nameable
    def initialize(nameable)
        @nemeable = nameable
        super()
    end

    def correct_name
        @nemeable.correct_name
    end
end