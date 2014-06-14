class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :team_a
      t.string :team_b

      t.timestamps
    end
  end
end
