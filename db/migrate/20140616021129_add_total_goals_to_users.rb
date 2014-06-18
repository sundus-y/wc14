class AddTotalGoalsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_goals, :integer
  end
end
