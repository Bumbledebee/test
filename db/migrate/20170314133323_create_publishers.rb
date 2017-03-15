class CreatePublishers < ActiveRecord::Migration[5.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :dashboardlink
      t.integer :fyberpublisherid

      t.timestamps
    end
  end
end
