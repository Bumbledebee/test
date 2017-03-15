class CreateRealtests < ActiveRecord::Migration[5.0]
  def change
    create_table :realtests do |t|
      t.integer :application_id
      t.integer :publisher_id
      t.integer :platform_id
      t.integer :feature_id

      t.timestamps
    end
  end
end
