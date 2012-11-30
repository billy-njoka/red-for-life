class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.integer :staff_no

      t.timestamps
    end
  end
end
