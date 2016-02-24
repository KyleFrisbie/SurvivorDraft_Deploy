class CreateDraftersSurvivors < ActiveRecord::Migration
  def change
    create_table :drafters_survivors do |t|
      t.references :drafter, index: true, foreign_key: true
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
