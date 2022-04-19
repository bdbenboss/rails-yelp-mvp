class Restaurant < ApplicationRecord
  belongs_to :restaurant
  validates :name, :adress, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
