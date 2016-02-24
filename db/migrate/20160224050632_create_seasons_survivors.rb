class CreateSeasonsSurvivors < ActiveRecord::Migration
  def change
    create_table :seasons_survivors do |t|
      t.references :season, index: true, foreign_key: true
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
