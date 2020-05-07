class RegistrationSerializer < ActiveModel::Serializer
  attributes :id, :race_id, :modality_id, :player_id, :date_registration
  belongs_to :race
  belongs_to :modality
  belongs_to :player

  def date_registration
    object.created_at.strftime("%d/%m/%Y")
  end
end
