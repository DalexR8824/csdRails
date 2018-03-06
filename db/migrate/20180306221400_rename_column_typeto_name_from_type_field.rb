class RenameColumnTypetoNameFromTypeField < ActiveRecord::Migration[5.1]
  def change
    rename_column :type_fields, :type, :name
 end
end
