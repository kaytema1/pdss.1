class PatientVisit < ActiveRecord::Base
  belongs_to :patient
  has_many :questionnaires
end
