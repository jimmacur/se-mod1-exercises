require './lib/player'
require './lib/team'

RSpec.describe Team do
    before(:each) do
        @team = Team.new("France")
    end

    describe 'initialize' do
        it 'exists' do
            expect(@team).to be_an_instance_of Team
        end
    end
end