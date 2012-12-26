class GroupsController < ApplicationController
  before_filter :authenticate_user!,  :except => [:index,:show]
  def index
    @search = Group.search(params[:search])
    @groups = @search.result(:distinct => true)
  end

  def show
    @group = Group.find(params[:id])
    @name = @group.users
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.create(params[:group])
    if @group.save
      redirect_to @group, :notice => "Successfully created group."
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to @group, :notice  => "Successfully updated group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, :notice => "Successfully destroyed group."
  end
end
