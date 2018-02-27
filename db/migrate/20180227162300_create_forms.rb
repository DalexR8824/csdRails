class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :description
      t.string :typeForm
      t.string :code

      t.timestamps
    end
  end
end
