class Users::GoodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @camp_types = CampType.all
  end

  def favorite
    @camp_type = CampType.find(params[:id])
    @camp_type.count += 1
    @camp_type.save
    redirect_to action: :index
  end

end