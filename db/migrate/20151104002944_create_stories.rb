class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.datetime :pubdate

      t.timestamps null: false
    end
  end
end
