class Prescription < ActiveRecord::Base
  belongs_to :patient_visit
end
