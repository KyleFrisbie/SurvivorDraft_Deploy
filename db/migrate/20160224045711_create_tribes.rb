class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :name
      t.integer :tribe_generation
      t.integer :immunity_wins
      t.integer :reward_wins

      t.timestamps null: false
    end
  end
end
