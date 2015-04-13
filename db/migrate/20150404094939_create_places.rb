class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.text :state
      t.text :coordinate
      t.string :best_season, array: true

      t.timestamps null: false
    end
  end
end
