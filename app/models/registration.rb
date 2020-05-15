class Registration < ApplicationRecord
  belongs_to :race
  belongs_to :modality
  belongs_to :player
  belongs_to :position, optional: true

  validates_uniqueness_of :race_id, scope: [:player_id, :modality_id], message: "Inscrição já existe!"
end
