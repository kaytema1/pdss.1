class AddStaffIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :staff_id, :string
  end
end
