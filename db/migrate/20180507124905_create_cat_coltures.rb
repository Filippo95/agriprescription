class CreateCatColtures < ActiveRecord::Migration
  def change
    create_table :cat_coltures do |t|
      t.string :name
      t.integer :id_parent

      t.timestamps null: false
    end
  end
end
