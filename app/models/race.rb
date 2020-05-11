class Race < ApplicationRecord
  enum status: {"aberta":1, "finalizada":2}
  has_many :race_modalities
  has_many :race_sponsors
  has_many :registrations
  has_many :sponsors, through: :race_sponsors, dependent: :destroy
  has_many :modalities, through: :race_modalities, dependent: :destroy

  validates :local, :status, :date_race, presence: true
end
