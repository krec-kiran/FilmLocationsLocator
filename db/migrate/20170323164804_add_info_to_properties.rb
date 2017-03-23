class AddInfoToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :info, :text
  end
end
