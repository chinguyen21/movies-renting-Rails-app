class Receipt < ApplicationRecord
  belongs_to :user
  belongs_to :movie
end
