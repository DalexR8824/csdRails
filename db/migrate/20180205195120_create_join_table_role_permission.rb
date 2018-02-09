class CreateJoinTableRolePermission < ActiveRecord::Migration[5.1]
	def change
		create_join_table :roles, :permissions do |t| t.index [:role_id, :permission_id]
		end # t.index [:permission_id, :role_id]
	end
end
