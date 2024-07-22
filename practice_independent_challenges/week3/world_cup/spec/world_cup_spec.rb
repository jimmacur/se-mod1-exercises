require './lib/player'
require './lib/team'
require './lib/world_cup'

RSpec.describe WorldCup do
    before(:each) do
        @france = Team.new("France")
        @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
        @france.add_player(@mbappe)
        @france.add_player(@pogba)

        @croatia = Team.new("Croatia")
        @modric = Player.new({name: "Luka Modric", position: "midfielder"})    
        @vida = Player.new({name: "Domagoj Vida", position: "defender"}) 
        @croatia.add_player(@modric)
        @croatia.add_player(@vida)

        @world_cup = WorldCup.new(2018, [@france, @croatia]) 
    end

    describe '#initialize' do
        it 'can exist' do
            expect(@world_cup).to be_an_instance_of WorldCup
        end

        it 'has attributes'do
            expect(@world_cup.year).to eq 2018
            expect(@world_cup.teams).to eq [@france, @croatia]
        end
    end

    describe '#sorting' do
        it 'can sort active players by position' do
            expect(@world_cup.active_players_by_position("midfielder")).to eq [@pogba, @modric]
        end

        it 'can remove players when they are no longer active' do
            expect(@world_cup.active_players_by_position("midfielder")).to eq [@pogba, @modric]

            @croatia.eliminated

            expect(@world_cup.active_players_by_position("midfielder")).to eq [@pogba]
        end

        it 'can list all players by position' do
            expect(@world_cup.all_players_by_position).to be_a Hash

            p @world_cup.all_players_by_position
        end
    end
end