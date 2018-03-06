class AddTypeFieldIdToFields < ActiveRecord::Migration[5.1]
  def change
    add_reference :fields, :type_field, foreign_key: true
  end
end
