class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company
      t.integer :location

      t.timestamps
    end
  end
end
