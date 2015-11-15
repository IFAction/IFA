class AddFavoritescoreToBandnames < ActiveRecord::Migration
  def change
    add_column :bandnames, :favoritescore, :integer
  end
end
