class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :Phone_Number
      t.string :email
      t.text :address
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
