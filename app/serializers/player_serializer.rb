class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :age
  has_many :registrations, serializer: RegistrationSerializer
end
