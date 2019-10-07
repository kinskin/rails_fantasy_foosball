class ScoreboardsController < ApplicationController

    def index
        @teams = Team.all.order(team_win: :desc )
    end

end