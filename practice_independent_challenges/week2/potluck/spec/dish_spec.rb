require './lib/dish'

RSpec.describe Dish do
        
    describe 'initialize' do
        it 'can exist' do
            dish = Dish.new("Couscous Salad", :appetizer)
            expect(dish).to be_an_instance_of(Dish)
        end

        it 'has attributes name and type' do
            dish = Dish.new("Couscous Salad", :appetizer)
            
            expect(dish.name).to eq("Couscous Salad")
            expect(dish.category).to eq(:appetizer)

        end
    end


end