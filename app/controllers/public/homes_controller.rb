class Public::HomesController < ApplicationController
  before_action :authenticate_user!, except: [:top,:about]

  def top

  end

  def about
    @post = Post.new
  end
end
