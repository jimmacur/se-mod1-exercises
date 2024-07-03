class Vampire

  attr_reader :name
  attr_accessor :pet, 
                :cape_color

  def initialize(name, cape_color, pet="bat", thirsty=true)
    @name = name
    @pet = pet
    @thirsty = thirsty
    @cape_color = cape_color
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end

  def sleep
    true
  end

  def wake
    @thirsty = true
  end
end
