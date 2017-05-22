class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.text :question
      t.string :answer
      t.text :comment
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
