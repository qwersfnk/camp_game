class Users::UsersController < ApplicationController
  before_action :authenticate_user!

  def edit

  end

  def index

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save!
    print @user.id
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :age, :gender, :postal_code, :address, :telephone_nymber, :password, :email)
  end
end
