#class Neamable
class Nameable
    # Method correct_name
    def correct_name
        raise NotImplementedError, "#{self.class} must implement abstract method '#{__method__}'"
    end
end