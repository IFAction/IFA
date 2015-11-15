class CreateBandnames < ActiveRecord::Migration
  def change
    create_table :bandnames do |t|
      t.string :firstword
      t.string :secondword

      t.timestamps null: false
    end
  end
end
