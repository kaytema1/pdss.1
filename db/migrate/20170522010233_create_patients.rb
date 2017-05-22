class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :folder_number
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.text :address
      t.string :doctors_name

      t.timestamps
    end
  end
end
