class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #has_many :has_roles
  #has_many :roles, through: :has_roles
  has_and_belongs_to_many :roles

  after_create :save_roles

  #Custom Setter
  def roles=(value)
    @roles = value
  end

  def save_roles
    @roles.each do |role_id|
      HasUser.create(role_id: role_id, user_id: self.id) 
    end

  end


  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
