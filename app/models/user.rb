class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #has_many :has_roles
  #has_many :roles, through: :has_roles
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :agents
  has_and_belongs_to_many :jobs

  

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
