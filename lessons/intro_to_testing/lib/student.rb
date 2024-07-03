class Student
    attr_reader :name,
                :cookies

    def initialize(name)
        if !name.is_a?(String)
            @name = 'Default Name Assigned'
        else 
            @name = name
        end
        @cookies = []
    end

    def add_cookie(cookies)
        @cookies.push(cookies)
    end
  end

