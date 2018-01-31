class Role < ApplicationRecord

	#has_many :has_users
  	#has_many :users, through: :has_users

  	has_and_belongs_to_many :users

	#after_create :save_users

	#Custom Setter
	#def users=(value)
	#	@users = value
	#end

	#def save_users
	#	@users.each do |user_id|
	#		HasUser.create(user_id: user_id, role_id: self.id)
	#	end

	#end

end
