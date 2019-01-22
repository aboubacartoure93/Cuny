json.extract! housing, :id, :rentalType, :numberofBedrooms, :numberofBathrooms, :housePrice, :availableDate, :student_id, :homeDescription, :address, :created_at, :updated_at
json.url housing_url(housing, format: :json)
