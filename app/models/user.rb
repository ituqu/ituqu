class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name,:email, :password, :password_confirmation, :remember_me,
  								:avatar, :avatar_cache, :qq, :gender
  
  has_many :groupships
  has_many :groups, through: :groupships
  
  mount_uploader :avatar, AvatarUploader
end
