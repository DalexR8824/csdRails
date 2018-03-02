class CreateTypeFields < ActiveRecord::Migration[5.1]
  def change
    create_table :type_fields do |t|
      t.string :type
      t.string :object

      t.timestamps
    end
  end
end
