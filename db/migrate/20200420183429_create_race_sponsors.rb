class CreateRaceSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :race_sponsors do |t|
      t.references :race, foreign_key: true
      t.references :sponsor, foreign_key: true

      t.timestamps
    end
  end
end
