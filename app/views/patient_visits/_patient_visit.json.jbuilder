json.extract! patient_visit, :id, :patient_id, :visit_date, :created_at, :updated_at
json.url patient_visit_url(patient_visit, format: :json)
