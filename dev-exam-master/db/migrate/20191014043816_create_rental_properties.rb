class CreateRentalProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :rental_properties do |t|
      t.string :property_name
      t.integer :rent
      t.string :street_address
      t.string :house_age
      t.text :remarks

      t.timestamps
    end
  end
end
