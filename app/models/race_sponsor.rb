class RaceSponsor < ApplicationRecord
  belongs_to :race
  belongs_to :sponsor
end
