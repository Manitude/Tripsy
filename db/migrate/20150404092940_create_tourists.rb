class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|
      t.text :name
      t.text :gender
      t.date :dob
      t.text :email
      t.text :contact

      t.timestamps null: false
    end
  end
end
