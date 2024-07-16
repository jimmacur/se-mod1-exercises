require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
    before(:each) do
        @potluck = Potluck.new("7-13-18")
        @couscous_salad = Dish.new("Couscous Salad", :appetizer)
        @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        @summer_pizza = Dish.new("Summer Pizza", :appetizer)
        @roast_pork = Dish.new("Roast Pork", :entre)
        @candy_salad = Dish.new("Candy Salad", :dessert)
    end
    
    describe 'initialize' do
        
         
        it 'can exist' do
            expect(@potluck).to be_an_instance_of(Potluck)
        end

        it 'has a date attribute' do
            expect(@potluck.date).to eq("7-13-18")
        end

        it 'dish attribute is an empty array' do
            expect(@potluck.dishes).to eq([])
        end
    end
    
    describe 'add_dish' do
        it 'has an add dish method' do
            expect(@potluck).to respond_to(:add_dish)
        end
        
        it 'the add dish method adds to an aray' do

            @potluck.add_dish(@couscous_salad)
            @potluck.add_dish(@cocktail_meatballs)

            expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
        end

        it 'the array can contain many dishes' do
            @potluck.add_dish(@couscous_salad)
            @potluck.add_dish(@cocktail_meatballs)

            expect(@potluck.dishes.count).to eq(2)
        end
    end

    describe 'get all from a category' do
        it 'can return all dishes from a category' do
            @potluck.add_dish(@couscous_salad)
            @potluck.add_dish(@summer_pizza)
            @potluck.add_dish(@roast_pork)
            @potluck.add_dish(@cocktail_meatballs)
            @potluck.add_dish(@candy_salad)

            expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad, @summer_pizza])
            expect(@potluck.get_all_from_category(:appetizer).first).to eq (@couscous_salad)
            expect(@potluck.get_all_from_category(:appetizer).first.name).to eq('Couscous Salad')
        end
    end


end

