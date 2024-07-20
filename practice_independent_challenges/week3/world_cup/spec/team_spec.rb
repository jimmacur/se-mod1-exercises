require './lib/player'
require './lib/team'

RSpec.describe Team do
    before(:each) do
        @team = Team.new("France")
        @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    end

    describe '#initialize' do
        it 'exists' do
            expect(@team).to be_an_instance_of Team
        end
    end

    describe '#attributes' do
        it 'defaults to false - eliminated' do
            expect(@team.eliminated?).to be false
        end

        it 'can change eliminated to true' do
            @team.eliminated

            expect(@team.eliminated?).to be true
        end
    end

    describe '#team players' do
        it 'can add players' do
            @team.add_player(@mbappe)
            @team.add_player(@pogba)

            expect(@team.players).to eq [@mbappe, @pogba]
        end

        it 'can list players by positition' do
            @team.add_player(@mbappe)
            @team.add_player(@pogba)

            expect(@team.players_by_position("midfielder")).to eq @pogba
        end
    end
end