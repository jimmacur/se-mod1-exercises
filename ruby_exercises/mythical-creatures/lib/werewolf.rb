class Werewolf
    attr_reader :name, :location
    attr_accessor :human, :werewolf, :hungry

    def initialize(name, location = "London")
        @name = name
        @location = location
        @human = true
        @werewolf = false
        @hungry = false
    end

    def human?
        @human
    end

    def change!
        if @human == true
            @human = false
            @werewolf = true
            @hungry = true
        else
            @human = true
            @werewolf = false
            @hungry = false
        end
    end

    def wolf?
        @werewolf
    end

    def hungry?
        @hungry
    end

    def consume_victim(victim)
       if @werewolf
        victim.status = :dead
        @hungry = false
       else
        false
       end
    end
end

class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end

end
