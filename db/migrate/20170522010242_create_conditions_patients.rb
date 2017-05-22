class CreateConditionsPatients < ActiveRecord::Migration
  def change
    create_table :conditions_patients do |t|
      t.belongs_to :condition, index: true
      t.belongs_to :patient, index: true
    end
  end
end
