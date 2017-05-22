class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :icd_code
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
