class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    
    end

    def stare(victim)
        if @statues.length < 3
          @statues << victim
          victim.stoned = true
        else
          victim.stoned = false
          @statues[0].stoned = false
        end
      end

    def count
        @statues.length
    end
end

class Person
    attr_reader     :name 
    attr_accessor   :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end


end