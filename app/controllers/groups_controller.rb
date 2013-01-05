class GroupsController < ApplicationController
  before_filter :authenticate_user!,  :except => [:index,:show]
  respond_to  :html, :xml, :js
  def index
    @q = Group.search(params[:q])
    @groups = @q.result(:distinct => true)
    respond_with @groups
  end

  def show
    @group = Group.find(params[:id])
    @name = @group.users
    respond_with @group
  end

  def new
    @group = Group.new
    respond_with  @group
  end

  def create
    @group = current_user.groups.create(params[:group])
    if @group.save
      current_user.add_role :admin, @group 
      redirect_to group_path(@group)
    else
      render :action => 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
    respond_with @group
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to @group
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, :format => :js
  end
end
private

