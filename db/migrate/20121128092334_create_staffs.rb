class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :staff_no
      t.integer :user_id

      t.timestamps
    end
  end
end
