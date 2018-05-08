class CreateProductSuppliers < ActiveRecord::Migration
  def change
    create_table :product_suppliers do |t|
      t.integer :id_product
      t.integer :id_supplier

      t.timestamps null: false
    end
  end
end
