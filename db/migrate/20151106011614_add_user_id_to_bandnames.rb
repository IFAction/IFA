class AddUserIdToBandnames < ActiveRecord::Migration
  def change
    add_column :bandnames, :user_id, :integer
  end
end
