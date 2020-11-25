class Palmy < ApplicationRecord
  has_many :reactions, dependent: :destroy
end
