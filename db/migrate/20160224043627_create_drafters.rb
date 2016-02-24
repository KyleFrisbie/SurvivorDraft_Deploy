class CreateDrafters < ActiveRecord::Migration
  def change
    create_table :drafters do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :wins
      t.integer :losses

      t.timestamps null: false
    end
  end
end
