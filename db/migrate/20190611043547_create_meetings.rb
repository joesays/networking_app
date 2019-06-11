class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.integer :connections_id
      t.date :date
      t.text :meeting_notes
      t.integer :location_id
      t.integer :user_id
      t.string :meeting_type

      t.timestamps
    end
  end
end
