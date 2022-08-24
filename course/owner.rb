class Owner 
    attr_reader :animals
    attr_accessor :name

    def initialize(name)
        @name = name
        @animals = []
    end

    def add_animals(animal)
        @animals.push(animal)
    end
end

alex =  Owner.new('Alex')
alex.add_animals('dog')
alex.add_animals('cat')

alex.animals.each do |animal|
    p animal
end

class Vet
    attr_accessor :visits
    attr_reader :name, :address

    def initialize(name, address)
        @name = name
        @address = address
        @visits = []
    end
end