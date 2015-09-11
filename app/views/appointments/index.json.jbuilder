json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet, :customer, :reason
  json.url appointment_url(appointment, format: :json)
end
