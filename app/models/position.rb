class Position < ApplicationRecord
  validates :description, :score, presence: true
  validates_uniqueness_of :description, scope: [:score], message: 'Já existe'
end
