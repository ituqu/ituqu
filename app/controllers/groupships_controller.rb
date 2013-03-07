# encoding: utf-8
class GroupshipsController < ApplicationController
	
	def create
		@groupship = current_user.groupships.build(:group_id => params[:group_id])
		@is_in_group = is_in_group?(params[:group_id])
		if @is_in_group
			flash[:notice] = "已经在团队中了！"
			redirect_to group_path(params[:group_id])
		elsif @groupship.save
			flash[:notice] = "成功加入团队"
			redirect_to group_path(params[:group_id])
		else
			flash[:notice] = "加入团队失败"
			redirect_to group_path(params[:group_id])
		end
	end

	def destroy
		@groupship = current_user.groupships.find(params[:id])     
		@groupship.destroy 
		flash[:notice] = "退出团队"      
		redirect_to current_user
	end

	private
	def is_in_group?(group_id)
		current_user.groupships.each do |g|
			return true if group_id == g.group_id
		end
		return false
	end

end
