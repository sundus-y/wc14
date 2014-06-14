class ChangeGameDateToDateTimeInGamesTable < ActiveRecord::Migration
  def up
    change_column :games, :game_date, :date
  end
  def down

  end
end
