class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :age
  has_many :races
end
