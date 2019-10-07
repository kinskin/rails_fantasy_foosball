class TeamsController < ApplicationController
    def index
        @teams = Team.all.order(id: :asc)
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
        @team = Team.new(team_params)
        @team.save

    end

    def update
        @team = Team.find(params[:id])
        p score_params
        @team.update(score_params)

        redirect_to teams_path
    end

    def destroy
        @team = Team.find(params[:id])

        @team.destroy

        redirect_to teams_path
    end


    private

        def team_params
            params.require(:teams).permit(:team_name,:first_player_first_name,:first_player_last_name,:second_player_first_name,:second_player_last_name,:stage, :team_win, :team_score)
        end

        def score_params
            params.require(:teams_update).permit(:stage, :team_score, :team_win)
        end
end