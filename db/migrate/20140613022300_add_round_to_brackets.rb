class AddRoundToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :round, :integer
  end
end
