class AddFirstwordToFavoritebandnames < ActiveRecord::Migration
  def change
    add_column :favoritebandnames, :Firstword, :string
  end
end
