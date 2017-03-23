class AddPriceToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :price, :integer
  end
end
