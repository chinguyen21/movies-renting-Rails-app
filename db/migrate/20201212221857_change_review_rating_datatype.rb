class ChangeReviewRatingDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rating, :float
  end
end
