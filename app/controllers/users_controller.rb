class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to  :js,:html,:xml
  def show
    @user = User.find(params[:id])
    respond_with @user
  end
  def edit
    @user = User.find(params[:id])
    respond_with   @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end
end
