class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.integer :feature_id
      t.integer :orderid
      t.string :name
      t.text :criteria

      t.timestamps
    end
  end
end
