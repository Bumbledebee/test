class CreateTestvalues < ActiveRecord::Migration[5.0]
  def change
    create_table :testvalues do |t|
      t.string :value
      t.integer :test_id
      t.string :result_state
      t.string :result_recommendation

      t.timestamps
    end
  end
end
