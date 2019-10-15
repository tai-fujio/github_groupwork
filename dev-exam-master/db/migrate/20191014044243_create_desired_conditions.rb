class CreateDesiredConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :desired_conditions do |t|
      t.string :roote_name
      t.string :station_name
      t.string :walking_minutes

      t.timestamps
    end
  end
end
