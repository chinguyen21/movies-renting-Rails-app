class ChangeMoviesImdbDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :imdb, :float
  end
end
