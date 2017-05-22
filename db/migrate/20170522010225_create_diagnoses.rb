class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.string :diagnosis
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
