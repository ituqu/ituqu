class Group < ActiveRecord::Base
  attr_accessible :name, :user_id, :description
  has_and_belongs_to_many  :users
  validates :name,:description, :presence => true
end
