class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :age, :registrations

  def registrations
    id = object.id
    record = Player.find(id).registrations
    resource = ActiveModelSerializers::SerializableResource.new(record, {}).to_json
    return resource
  end
end
