class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.belongs_to :tourist, index: true
      t.belongs_to :place, index: true
      t.text :title
      t.text :body
      t.date :published_on
      t.string :tags, array: true

      t.timestamps null: false
    end
  end
end
