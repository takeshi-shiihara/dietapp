class Food < ApplicationRecord
  belongs_to :user

  validates :food, :carbonhydrate, :protein, :lipid, presence: true
end
