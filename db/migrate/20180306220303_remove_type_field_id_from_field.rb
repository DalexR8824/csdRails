class RemoveTypeFieldIdFromField < ActiveRecord::Migration[5.1]
  def change
    remove_column :fields, :TypeField_id, :integer
  end
end
