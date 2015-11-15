class AddBandnameIdToFavoritebandnames < ActiveRecord::Migration
  def change
    add_column :favoritebandnames, :Bandname_id, :integer
  end
end
