class AddCanoeToRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :registrations, :canoe, :string
  end
end
