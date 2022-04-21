class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
