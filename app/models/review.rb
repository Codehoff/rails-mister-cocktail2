class Review < ApplicationRecord
    belongs_to :cocktail, dependent: :destroy
    validates :cocktail, presence: true
    validates :content, presence: true
    validates :rating, presence: true
    validates :rating, inclusion: { in: (0..5)}
  end
  