class SportsTeam
    def initialize(team_name,team_players,team_manager)
      @team_name = team_name
      @team_players = team_players
      @team_manager = team_manager
      @points = 0
    end

      attr_reader :team_name, :team_players, :points
      attr_accessor :team_manager


    def add_team_player(*players)
      players.each { |player|
        @team_players.push(player)
      }
    end

    def is_on_team(player_name_str)
      on_team = @team_players.include?(player_name_str)
      if on_team
        return "Yes, #{player_name_str} plays left back in the changing room."
      else
        return "No, #{player_name_str} is now a motivational speaker."
      end
    end

    def win_loose_draw(result_str)
        case result_str
        when "win"
          @points += 3
        when "loose"
          @points += 0
        when "draw"
          @points += 1
        else
          "Please enter result as either 'win', 'loose', or 'draw'."
        end
    end

end
