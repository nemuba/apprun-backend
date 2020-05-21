class AddLocalToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :local, :string
  end
end
