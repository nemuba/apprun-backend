class Race < ApplicationRecord
  enum status: {"aberta":1, "finalizada":2}
  has_many :race_modalities
  has_many :modalities, through: :race_modalities, dependent: :destroy
end
