class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
  end
end
