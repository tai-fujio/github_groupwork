class ChangeDataWalkingMinutesToDesiredConditions < ActiveRecord::Migration[5.0]
  def change
    change_column :desired_conditions, :walking_minutes, :integer
  end
end
