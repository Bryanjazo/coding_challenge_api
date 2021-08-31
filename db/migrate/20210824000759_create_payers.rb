class CreatePayers < ActiveRecord::Migration[6.1]
  def change
    create_table :payers do |t|
      t.string :payer
      t.integer :points, default: 0
      t.date :timestamp
    end
  end
end
