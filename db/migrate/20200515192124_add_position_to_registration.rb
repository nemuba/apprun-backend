class AddPositionToRegistration < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrations, :position, foreign_key: true
  end
end
