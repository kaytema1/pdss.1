json.extract! questionnaire, :id, :question, :answer, :comment, :patient_visit_id, :created_at, :updated_at
json.url questionnaire_url(questionnaire, format: :json)
