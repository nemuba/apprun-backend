class Modality < ApplicationRecord
  enum genre: {"Masculino": 1, "Feminino": 0}
  has_many :race_modalities
  has_many :races, through: :race_modalities, dependent: :destroy

  validates :genre, :oar, presence: true
  validates :genre, uniqueness: { scope: :oar }, message: "Modalidade já existe !"
end
