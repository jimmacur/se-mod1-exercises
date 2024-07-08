class Wizard
    attr_reader :name, :bearded, :rested, :cast_count

    def initialize (name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @cast_count = 0
    end

    def bearded?
        @bearded
    end

    def incantation(power_words)
        return "sudo #{power_words}"
    end

    def rested?
        if @cast_count < 3
            @rested = true
        else
            @rested = false
        end
    end

    def cast
        @cast_count += 1
        "MAGIC MISSLE"
    end


end