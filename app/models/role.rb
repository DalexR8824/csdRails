class Role < ApplicationRecord

	after_create :save_users


	def users=(value)
		@users = value
	end

	def save_users
		@users.each do |user_id|
			HasUser.create(user_id: user_id, role_id: self.id)
		end

	end

end
