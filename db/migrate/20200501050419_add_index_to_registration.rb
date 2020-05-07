class AddIndexToRegistration < ActiveRecord::Migration[5.2]
  def change
    add_index :registrations, [:race_id, :player_id, :modality_id],  :unique => true
  end
end
