class Job < ApplicationRecord
	has_and_belongs_to_many :agents
	has_and_belongs_to_many :users
end
