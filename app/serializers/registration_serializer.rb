class RegistrationSerializer < ActiveModel::Serializer
  attributes :id, :race_id, :modality_id, :player_id, :position_id, :date_registration, :canoe

  has_one :race
  has_one :modality
  has_one :player
  has_one :position

  def date_registration
    object.created_at.strftime("%d/%m/%Y")
  end
end
