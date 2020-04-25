class Sponsor < ApplicationRecord
  has_many :race_sponsors
  has_many :races, through: :race_sponsors, dependent: :destroy
  validates :name, :telephone, presence: true
end
