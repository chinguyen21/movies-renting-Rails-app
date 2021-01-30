class User < ApplicationRecord
  has_many :receipts
  has_many :movies, through: :receipts
  has_many :reviews

  validates :email_address, uniqueness: true



end
