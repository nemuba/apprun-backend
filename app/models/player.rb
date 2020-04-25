class Player < ApplicationRecord
  enum genre: {"Masculino": 1, "Feminino": 2}
  validates :name, :genre, :age, presence: true
   validates :age, numericality: { only_integer: true }
end
