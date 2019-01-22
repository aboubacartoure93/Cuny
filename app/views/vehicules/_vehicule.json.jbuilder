json.extract! vehicule, :id, :vehiculeType, :vehiculePrice, :availableNow, :student_id, :vehiculeDescription, :vehiculeLocation, :condition, :make, :model, :year, :created_at, :updated_at
json.url vehicule_url(vehicule, format: :json)
