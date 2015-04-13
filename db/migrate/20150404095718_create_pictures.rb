class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :blog
      t.text :caption
      t.string :tags, array: true

      t.timestamps null: false
    end
  end
end
