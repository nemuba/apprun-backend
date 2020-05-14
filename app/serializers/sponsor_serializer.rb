class SponsorSerializer < ActiveModel::Serializer
  attributes :id, :name, :telephone
  has_many :races
end
