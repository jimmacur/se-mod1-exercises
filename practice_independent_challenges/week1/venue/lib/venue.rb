class Venue
    attr_reader :name, :capacity, :patrons

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
    end

    def add_patron(patron_name)
        #put the patron_name into the patrons array
        @patrons.push(patron_name)
    end

    def yell_at_patrons
        @patrons.map(&:upcase)
    end
end
