class RemoveWinsandlossesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :wins, :integer
    remove_column :users, :losses, :integer
  end
end
