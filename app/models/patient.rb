class Patient < ActiveRecord::Base
  has_many :patient_visits
  has_and_belongs_to_many :questionnaires
end
