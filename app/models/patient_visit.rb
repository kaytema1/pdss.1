class PatientVisit < ActiveRecord::Base
  belongs_to :patient
  has_many :questionnaires
  has_many :prescriptions
  has_many :diagnoses
  has_many :conditions
end
