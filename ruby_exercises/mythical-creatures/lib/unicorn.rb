class Unicorn

    attr_reader :name, :color, :say
    def initialize(name = "", color = "silver", say = "")
        @name = name
        @color = color
        @say = say
    end

    def silver?
        return true if color == "silver"
        false
    end

    def say(message)
        return "**;* #{message} **;*"
    end

end