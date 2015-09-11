json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :type, :breed, :age, :weight, :last_visit, doctor_id
  json.url pet_url(pet, format: :json)
end
