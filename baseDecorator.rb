require_relative 'nemeable'

class Decorator < Nameable
    def initialize(nameable)
        @nemeable = nameable
        super()
    end
end