class Centaur
    attr_reader :name, 
                :breed, 
                :cranky, 
                :standing, 
                :sleeping, 
                :laying, 
                :sick

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @action_count = 0
        @sleeping = false
        @laying = false
        @sick = false
    end

    def shoot
        if @action_count < 3 && @laying == false
            @action_count += 1
            check_cranky
            "Twang!!!"
        else
            @cranky == true
            "NO!"            
        end
    end

    def run
        if @action_count < 3 && @laying == false
            @action_count += 1
            check_cranky
            "Clop clop clop clop!"
        else
            @cranky == true
            "NO!"
        end
    end

    def cranky?
        @cranky
    end

    def standing?
        @standing
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def laying?
        @laying
    end

    def stand_up
        @laying = false
        @standing = true
        @sleeping = false
    end

    def sleep
        if @standing
            "NO!"
        else
            @sleeping = true
            @standing = false
            @cranky = false
            @action_count = 0
        end        
    end

    def drink_potion
        if @action_count == 0
            @sick = true
        elsif @standing
            @action_count = 0
            @cranky = false
        else
            "NO!"
        end
    end

    def check_cranky
        @cranky = true if @action_count >= 3
    end

end