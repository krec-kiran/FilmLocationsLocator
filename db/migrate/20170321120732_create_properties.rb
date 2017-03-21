class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :category
      t.string :type
      t.string :livingroom
      t.string :bedroom
      t.string :kitchen
      t.string :bathroom
      t.string :parking

      t.timestamps
    end
  end
end
