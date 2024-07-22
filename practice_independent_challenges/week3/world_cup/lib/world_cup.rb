class WorldCup
    attr_reader :year, :teams

    def initialize (year, teams)
        @year = year
        @teams = teams
    end

    def active_players_by_position(position)
        @teams.flat_map do |team|
            if team.eliminated? == false
                team.players_by_position(position)
            end
        end.compact
    end

    def all_players_by_position
        all_players = []

        @teams.each do |team|
            players_on_teams = team.players
            players_on_teams.each do |player|
                all_players << player
                end

                all_players.each do |player|
                    player.players_by_position.uniq
                    players_by_position[position] ||= []
                    players_by_position[position] << player
                end
        end
    end

    def all_players_by_position
        all_players = []
      
        @teams.each do |team|
          players_on_team = team.players
          players_on_team.each do |player|
            all_players << player
          end
        end
      
        players_by_position = {}
      
        all_players.each do |player|
          position = player.position
          players_by_position[position] ||= []
          players_by_position[position] << player
        end
      
        players_by_position
      end
    
end