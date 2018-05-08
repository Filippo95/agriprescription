class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.date :date
      t.integer :id_company
      t.integer :land
      t.text :note

      t.timestamps null: false
    end
  end
end
