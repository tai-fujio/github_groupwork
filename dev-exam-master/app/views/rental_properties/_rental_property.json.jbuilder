json.extract! rental_property, :id, :property_name, :rent, :street_address, :house_age, :remarks, :created_at, :updated_at
json.url rental_property_url(rental_property, format: :json)