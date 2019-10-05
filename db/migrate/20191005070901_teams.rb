class Teams < ActiveRecord::Migration[5.2]
    def change
        create_table :teams do |t|
            t.string :team_name
            t.string :first_player_first_name
            t.string :first_player_last_name
            t.string :second_player_first_name
            t.string :second_player_last_name
            t.text :elimination_round
            t.text :quarter_final_round
            t.text :semi_final_round
            t.text :final_round
            t.integer :team_win
            t.integer :team_score
            t.timestamps
        end
    end
end