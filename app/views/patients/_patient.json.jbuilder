json.extract! patient, :id, :folder_number, :first_name, :last_name, :date_of_birth, :gender, :address, :doctors_name, :created_at, :updated_at
json.url patient_url(patient, format: :json)
