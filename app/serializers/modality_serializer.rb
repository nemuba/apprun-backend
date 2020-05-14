class ModalitySerializer < ActiveModel::Serializer
  attributes :id, :genre, :oar
  has_many :races
end
