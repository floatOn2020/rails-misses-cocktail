class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
end

# validates :name, uniqueness: true, presence: true
# validates :address, presence: true
# validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
