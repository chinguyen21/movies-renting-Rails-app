class Addcolumntrailertomovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :trailer, :string
  end
end
