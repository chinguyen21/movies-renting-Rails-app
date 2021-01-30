class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.integer :user_id
      t.integer :movie_id
      t.date :checkout_date
      t.date :due_date

      t.timestamps
    end
  end
end
