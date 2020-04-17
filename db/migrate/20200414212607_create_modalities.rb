class CreateModalities < ActiveRecord::Migration[5.2]
  def change
    create_table :modalities do |t|
      t.integer :genre
      t.integer :oar

      t.timestamps
    end
  end
end
