class CreatePrescriptionRows < ActiveRecord::Migration
  def change
    create_table :prescription_rows do |t|
      t.integer :id_prescription
      t.integer :id_product
      t.float :dose_per_ha

      t.timestamps null: false
    end
  end
end
