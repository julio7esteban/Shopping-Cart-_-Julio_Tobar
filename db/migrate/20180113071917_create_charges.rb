class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.string :pay

      t.timestamps
    end
  end
end
