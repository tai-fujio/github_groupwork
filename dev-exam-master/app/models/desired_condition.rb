class DesiredCondition < ApplicationRecord
  belongs_to :rental_property, optional: true
end
