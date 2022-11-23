class Product < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :orders, dependent: :destroy

end
