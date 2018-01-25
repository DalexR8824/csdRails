class AddStatusFlows < ActiveRecord::Migration[5.1]
  def change
  	add_column :flows, :status, :string
  end
end
