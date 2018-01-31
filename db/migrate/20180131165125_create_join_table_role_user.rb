class CreateJoinTableRoleUser < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :roles, :users do |t| t.index [:role_id, :user_id]
  	end # t.index [:user_id, :role_id]
  end
end
