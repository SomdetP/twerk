class AddUserIdToTwerks < ActiveRecord::Migration[5.2]
  def change
    add_column :twerks, :user_id, :integer
  end
end
