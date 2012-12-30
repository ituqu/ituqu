class Group < ActiveRecord::Base
  attr_accessible :name, :user_id, :description,:start,:destination
  has_and_belongs_to_many  :users
  validates :name,:description, :presence => true
  def self.Pro_select
      
       province = Hash[ :shanghai => "shanghai", :xizang   => "xizang", :beijing =>  "beijing" ]      
      
  end
end
