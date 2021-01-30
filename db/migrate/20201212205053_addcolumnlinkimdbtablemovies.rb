class Addcolumnlinkimdbtablemovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :link_imdb, :string
  end
end
