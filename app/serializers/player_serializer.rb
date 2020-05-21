class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :age, :score, :local
  has_many :registrations

  def score
    total = 0
    object.registrations.each do |registration|
      total += registration.position.score
    end
    return total
  end

end
