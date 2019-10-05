class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
        @team = Team.new(team_params)
        @team.save

        redirect_to teams_path
    end

    def update
    end

    def destroy
    end


    private
        def team_params
            params.require(:teams).permit(:team_name,:first_player_first_name,:first_player_last_name,:second_player_first_name,:second_player_last_name, :elimination_round, :quarter_final_round, :semi_final_round, :final_round, :team_win, :team_score)
        end
end