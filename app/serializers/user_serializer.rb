class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin, :photo
end
