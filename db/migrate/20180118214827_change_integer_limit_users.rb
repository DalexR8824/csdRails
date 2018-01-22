class ChangeIntegerLimitUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :celPhone, :integer, limit: 8
  end
end
