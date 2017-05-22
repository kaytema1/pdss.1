class CreatePrescriptionItems < ActiveRecord::Migration
  def change
    create_table :prescription_items do |t|
      t.string :drug_name
      t.integer :quantity
      t.decimal :price
      t.string :drug_form
      t.references :prescription, index: true

      t.timestamps
    end
  end
end
