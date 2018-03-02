class AddFormIdToFields < ActiveRecord::Migration[5.1]
  def change
    add_reference :fields, :form, foreign_key: true
  end
end
