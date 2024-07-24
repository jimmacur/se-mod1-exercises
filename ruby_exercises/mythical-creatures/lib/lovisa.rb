class Lovisa
    attr_reader :title, :brilliant, :characteristics

    def initialize (title, characteristics = ["brilliant"])
        @title = title
        @brilliant = true
        @kind = true
        @characteristics = characteristics
    end

    def brilliant?
        @brilliant
    end

    def kind?
        @kind
    end

    def say(words)
        "**;* #{words} **;*"
    end
end