class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.integer :meeting_id
      t.integer :connection_id

      t.timestamps
    end
  end
end
