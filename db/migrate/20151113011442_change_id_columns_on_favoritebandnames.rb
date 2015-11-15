class ChangeIdColumnsOnFavoritebandnames < ActiveRecord::Migration
  def change
  	change_table :favoritebandnames do |t|
  		t.rename :User_id, :user_id
  		t.rename :Bandname_id, :bandname_id
  	end
  end
end
