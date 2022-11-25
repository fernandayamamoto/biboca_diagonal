class Product < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
