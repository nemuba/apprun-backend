class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :local
      t.integer :status
      t.date :date_race

      t.timestamps
    end
  end
end
