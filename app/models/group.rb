class Group < ActiveRecord::Base
	resourcify
	attr_accessible :name, :user_id, :description,:start,:destination,:limitition,:remark,:link

	has_many :groupships
	has_many :users, through: :groupships

	validates :name,:description, :presence => true
	def self.Pro_select
		province = Hash[ shanghai: "shanghai", xizang: "xizang",
			beijing:  "beijing" ]      
		end
	end
