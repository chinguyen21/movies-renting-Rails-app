class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address, index: {unique: true}
      t.integer :age

      t.timestamps
    end
  end
end
