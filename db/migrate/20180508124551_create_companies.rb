class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cf
      t.string :piva
      t.string :registred_office
      t.string :mail

      t.timestamps null: false
    end
  end
end
