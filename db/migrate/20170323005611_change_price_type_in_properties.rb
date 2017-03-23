class ChangePriceTypeInProperties < ActiveRecord::Migration[5.0]
  def change
    change_column :properties, :price, :string
  end
end
