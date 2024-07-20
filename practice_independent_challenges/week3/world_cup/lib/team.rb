class Team
    attr_reader :country, :players

    def initialize(country)
        @country = country
        @eliminated = false
        @player = []
    end

    def eliminated?
        @eliminated
    end

    def eliminated
        @eliminated = true
    end
end