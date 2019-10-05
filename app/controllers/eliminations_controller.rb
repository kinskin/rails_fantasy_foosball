class EliminationsController < ApplicationController

    def index
        @shuffledteams = []
        @shufflecookies = cookies[:elimination_shuffle]
        if @shufflecookies != 'true'
            @teams = Team.all.shuffle
            length = @teams.length/2
            until length == 0 do
                verses = @teams.slice!(0,2)
                @shuffledteams.push(verses)
                length -= 1
            end
            cookies[:elimination_shuffle] = {
              :value => true
            }
        end
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end
end