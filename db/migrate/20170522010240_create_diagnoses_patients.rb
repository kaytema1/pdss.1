class CreateDiagnosesPatients < ActiveRecord::Migration
  def change
    create_table :diagnoses_patients do |t|
      t.belongs_to :diagnosis, index: true
      t.belongs_to :patient, index: true
    end
  end
end
