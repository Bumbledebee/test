class CreateRealtestresults < ActiveRecord::Migration[5.0]
  def change
    create_table :realtestresults do |t|
      t.integer :realtest_id
      t.integer :test_id
      t.integer :testvalue_id
      t.integer :testresult_id

      t.timestamps
    end
  end
end
