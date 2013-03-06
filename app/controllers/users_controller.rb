class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to  :html,:json
  
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
    @user.update_attributes(params[:user])
    respond_with @user 
    #redirect_to @user, :notice  => "Successfully updated user."
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end
end
