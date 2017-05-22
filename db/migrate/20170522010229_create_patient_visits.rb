class CreatePatientVisits < ActiveRecord::Migration
  def change
    create_table :patient_visits do |t|
      t.references :patient, index: true
      t.datetime :visit_date

      t.timestamps
    end
  end
end
