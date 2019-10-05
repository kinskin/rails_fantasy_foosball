class TeamsController < ApplicationController
    def index
        @teams = Team.all
        @cookies = cookies[:start]
        @elimination = cookies[:elimination_end]
        @quarter = cookies[:quarter_end]
        @semi = cookies[:semi_end]
        @final = cookies[:final_end]
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
        if(!start_params)
          @team = Team.new(team_params)
          @team.save
        else
          cookies[:start] = {
            :value => true
          }
        end

        redirect_to teams_path
    end

    def update
    end

    def destroy
        @team = Team.find(params[:id])
        @team.destroy

        redirect_to teams_path
    end


    private
        def team_params
            params.require(:teams).permit(:team_name,:first_player_first_name,:first_player_last_name,:second_player_first_name,:second_player_last_name, :elimination_round, :quarter_final_round, :semi_final_round, :final_round, :team_win, :team_score)
        end

        def start_params
            params.require(:starts).permit(:start)
        end
end