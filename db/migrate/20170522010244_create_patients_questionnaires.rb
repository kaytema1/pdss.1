class CreatePatientsQuestionnaires < ActiveRecord::Migration
  def change
    create_table :patients_questionnaires do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :questionnaire, index: true
    end
  end
end
