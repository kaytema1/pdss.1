class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
