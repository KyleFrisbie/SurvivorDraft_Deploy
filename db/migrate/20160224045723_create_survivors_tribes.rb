class CreateSurvivorsTribes < ActiveRecord::Migration
  def change
    create_table :survivors_tribes do |t|
      t.references :survivor, index: true, foreign_key: true
      t.references :tribe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
