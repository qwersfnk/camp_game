class Admin::PostsController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to admin_post_path
  end
end