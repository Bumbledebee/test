class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.integer :publisher_id
      t.integer :platform_id
      t.integer :fyberapplicationid
      t.string :dashboardlink
      t.string :ticketlink
      t.string :buildlink

      t.timestamps
    end
  end
end
