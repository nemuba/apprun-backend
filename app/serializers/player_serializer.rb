class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :age, :score, :local
  has_many :registrations

  def score
    total = 0
    object.registrations.each do |registration|
      if registration.position.any?
        total += registration.position.score
      end
    end
    return total
  end

  def local
    object.local.blank? ? "Indefinido" : object.local
  end

end
