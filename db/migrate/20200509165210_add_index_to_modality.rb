class AddIndexToModality < ActiveRecord::Migration[5.2]
  def change
    add_index :modalities, [:genre, :oar], unique: true
  end
end
