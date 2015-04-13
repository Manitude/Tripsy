class AddUserIdToTourists < ActiveRecord::Migration
  def change
  	add_column :tourists, :user_id, :text
    add_index :tourists, :user_id
  end
end
