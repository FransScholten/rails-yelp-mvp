class ChangeDataTypeToRestaurant < ActiveRecord::Migration[6.0]
  def change
    rename_column(:restaurants, :stars, :phone_number)
    change_column(:restaurants, :phone_number, :string)
    add_column(:restaurants, :category, :string)
  end
end
