class CreateMaxDoses < ActiveRecord::Migration
  def change
    create_table :max_doses do |t|
      t.integer :id_product
      t.integer :id_colture
      t.float :max_gr_ha

      t.timestamps null: false
    end
  end
end
