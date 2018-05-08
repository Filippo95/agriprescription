class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nome
      t.string :p_active

      t.timestamps null: false
    end
  end
end
