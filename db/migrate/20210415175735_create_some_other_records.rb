class CreateSomeOtherRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :some_other_records do |t|
      t.string :username
      t.integer :score

      t.timestamps
    end
  end
end
