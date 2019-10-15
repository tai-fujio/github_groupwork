class RentalProperty < ApplicationRecord
 has_many :desired_conditions, dependent: :destroy
 accepts_nested_attributes_for :desired_conditions, allow_destroy: true
end
