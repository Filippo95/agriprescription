class CreateColtures < ActiveRecord::Migration
  def change
    create_table :coltures do |t|
      t.string :name
      t.integer :id_cat

      t.timestamps null: false
    end
  end
end
