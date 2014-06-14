class AddGroupToGames < ActiveRecord::Migration
  def change
    add_column :games, :group, :string
  end
end
