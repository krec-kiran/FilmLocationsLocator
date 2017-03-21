class ChangeColoumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :properties, :type, :kind
  end
end

# class ChangeColumnName < ActiveRecord::Migration
#   def change
#     rename_column :table_name, :old_column, :new_column
#   end
# end
