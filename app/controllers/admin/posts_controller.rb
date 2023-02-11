class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!

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