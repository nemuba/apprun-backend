class RaceSerializer < ActiveModel::Serializer
  attributes :id, :local, :status, :date_race
  has_many :modalities
  has_many :sponsors

  def date_race
    object.date_race.strftime('%d/%m/%Y')
  end
end
