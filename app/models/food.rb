class Food < ApplicationRecord
  belongs_to :user

  validates :food, presence: true
end
