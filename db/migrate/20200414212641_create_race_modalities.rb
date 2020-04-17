class CreateRaceModalities < ActiveRecord::Migration[5.2]
  def change
    create_table :race_modalities do |t|
      t.references :race, foreign_key: true
      t.references :modality, foreign_key: true

      t.timestamps
    end
  end
end
