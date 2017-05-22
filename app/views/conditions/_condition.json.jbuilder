json.extract! condition, :id, :name, :icd_code, :patient_visit_id, :created_at, :updated_at
json.url condition_url(condition, format: :json)
