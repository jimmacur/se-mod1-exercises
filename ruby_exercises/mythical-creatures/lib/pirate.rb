class Pirate
    attr_reader :name, :job, :cursed, :heinous_acts, :booty

    def initialize(name, job = "Scallywag", cursed = false, booty = 0)
        @name = name
        @job = job
        @cursed = cursed
        @heinous_acts = 0
        @booty = booty
    end

     def commit_heinous_act
        @heinous_acts += 1

    end

    def cursed?
        if heinous_acts <= 2
            @cursed
        else
            @cursed = true
        end
    end

    def robs_ships
        @booty += 100
    end

end