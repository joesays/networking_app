class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.integer :company_id
      t.integer :location_id
      t.string :photo
      t.string :name
      t.string :linkein

      t.timestamps
    end
  end
end
