class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :description
      t.integer :score

      t.timestamps
    end
  end
end
