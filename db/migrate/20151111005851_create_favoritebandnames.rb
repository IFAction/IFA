class CreateFavoritebandnames < ActiveRecord::Migration
  def change
    create_table :favoritebandnames do |t|
      t.integer :User_id

      t.timestamps null: false
    end
  end
end
