class Card < ApplicationRecord
  belongs_to :list
  has_many :comments

  validates :title, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
end
