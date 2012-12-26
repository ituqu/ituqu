class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name,:email, :password, :password_confirmation, :remember_me
  has_and_belongs_to_many  :groups
end
