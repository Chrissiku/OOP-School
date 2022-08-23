class Other
    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child
    def initialize()
        @other = Other.new()
    end 

    def implicit()
        @other.implicit()
    end

    def override
        @other.override()
    end

    def altered()
        puts
        puts "before"
        @other.altered()
        puts "after"
    end
end


son = Child.new()

son.implicit()
son.override()
son.altered()
