class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :round
      t.string :team_a
      t.string :team_b
      t.integer :goal_a
      t.integer :goal_b

      t.timestamps
    end
  end
end
