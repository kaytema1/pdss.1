class Diagnosis < ActiveRecord::Base
  belongs_to :patient_visit
  has_and_belongs_to_many :patients
end
