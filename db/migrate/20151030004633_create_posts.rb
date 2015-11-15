class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :string
      t.integer :user_id
      t.string :content
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
