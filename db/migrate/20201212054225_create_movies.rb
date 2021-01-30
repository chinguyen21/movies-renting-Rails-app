class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name, index: {unique: true}
      t.integer :imdb
      t.date :premiered_on
      t.string :poster

      t.timestamps
    end
  end
end
