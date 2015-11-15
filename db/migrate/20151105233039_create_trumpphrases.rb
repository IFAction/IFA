class CreateTrumpphrases < ActiveRecord::Migration
  def change
    create_table :trumpphrases do |t|
      t.string :firstsentence

      t.timestamps null: false
    end
  end
end
