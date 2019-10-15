class AddRentalPropertyRefToDesiredConditions < ActiveRecord::Migration[5.0]
  def change
    add_reference :desired_conditions, :rental_property, foreign_key: true
  end
end
