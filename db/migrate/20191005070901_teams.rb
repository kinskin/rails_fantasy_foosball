class Teams < ActiveRecord::Migration[5.2]
    def change
        create_table :teams do |t|
            t.string :team_name
            t.string :first_player_first_name
            t.string :first_player_last_name
            t.string :second_player_first_name
            t.string :second_player_last_name
            t.text :stage
            t.integer :team_win
            t.integer :team_score
            t.timestamps
        end
    end
end