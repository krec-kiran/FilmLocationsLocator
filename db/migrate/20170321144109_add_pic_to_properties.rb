class AddPicToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :pic, :text
  end
end
