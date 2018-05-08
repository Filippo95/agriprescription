class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.integer :id_colture
      t.float :ha
      t.integer :id_company

      t.timestamps null: false
    end
  end
end
