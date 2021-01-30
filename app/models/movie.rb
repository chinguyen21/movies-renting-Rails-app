class Movie < ApplicationRecord
  has_many :receipts
  has_many :users, through: :receipts
  has_many :reviews

  validates :name, uniqueness: true
end
