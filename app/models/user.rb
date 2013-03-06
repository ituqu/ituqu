class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name,:email, :password, :password_confirmation, :remember_me,
  								:avatar, :avatar_cache, :qq, :gender
  has_and_belongs_to_many  :groups
  mount_uploader :avatar, AvatarUploader
end
