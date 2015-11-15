class AddFavoritebandnameIdToBandnames < ActiveRecord::Migration
  def change
    add_column :bandnames, :Favoritebandname_id, :integer
  end
end
