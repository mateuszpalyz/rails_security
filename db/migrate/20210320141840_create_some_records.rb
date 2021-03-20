class CreateSomeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :some_records do |t|
      t.string :name
      t.integer :priority

      t.timestamps
    end
  end
end
