class Player < ApplicationRecord
  enum genre: {"Masculino": 1, "Feminino": 2}
  validates :name, :genre, :age, presence: true
  validates :age, numericality: { only_integer: true }

  has_many :registrations, dependent: :destroy
  has_many :races, through: :registrations
end
