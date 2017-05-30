class Prescription < ActiveRecord::Base
  belongs_to :patient_visit
  has_and_belongs_to_many :patients
  has_many :prescription_items, :dependent => :destroy
  accepts_nested_attributes_for :prescription_items
  #accepts_nested_attributes_for :prescription_items, :reject_if => lambda { |a| a[:drug_name].blank? }, :allow_destroy => true
end
