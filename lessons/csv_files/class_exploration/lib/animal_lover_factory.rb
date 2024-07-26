require 'CSV'
require './lib/animal_lover'

class AnimalLoverFactory

    def create_animal_lovers(data)
        animal_lovers = []
        CSV.foreach(data, headers: true, header_converters: :symbol) do |row|
            id = row[:id].to_i
            first_name = row[:first_name]
            last_name = row[:last_name]
            age = row[:age].to_i
            animal_lover = AnimalLover.new(id,first_name,last_name,age)   
            animal_lovers << animal_lover
        end
        animal_lovers
    end

end