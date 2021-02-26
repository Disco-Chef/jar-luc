class Palmy < ApplicationRecord
  has_many :reactions, dependent: :destroy

  validates :description, presence: true
  validates :author, presence: true
end
