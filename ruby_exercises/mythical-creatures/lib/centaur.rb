class Centaur
    attr_reader :name, :breed, :cranky, :standing

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @action_count = 0
    end

    def shoot
        if @action_count < 3
            @action_count += 1
            check_cranky
            "Twang!!!"
        else
            @cranky == true
            "No!"            
        end
    end

    def run
        if @action_count < 3
            @action_count += 1
            check_cranky
            "Clop clop clop clop!"
        else
            @cranky == true
            "No!"
        end
    end

    def cranky?
        @cranky
    end

    def standing?
        @standing
    end

    def check_cranky
        @cranky = true if @action_count >= 3
    end

end